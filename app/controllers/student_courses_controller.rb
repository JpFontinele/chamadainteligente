class StudentCoursesController < ApplicationController

  def show
    studentcourses = StudentCourse.where(student_id: params[:id])
    courselist = []
    if studentcourses
      studentcourses.each { |stc|
        course = Course.find(stc.course_id)
        courselist.append(course)
      }
      print courselist
      render json: courselist
    end
  end


end