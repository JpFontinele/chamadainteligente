class StudentCoursesController < ApplicationController

  def index
    studentcourses = StudentCourse.where(course_id: params[:id])
    studentlist = []
    studentcourses.each { |stc|
      student = Student.find(stc.student_id)
      studentlist.append(student)
    }
    render json: studentlist
  end

  def show
    studentcourses = StudentCourse.where(student_id: params[:id])
    courselist = []
    if studentcourses
      studentcourses.each { |stc|
        course = Course.find(stc.course_id)
        courselist.append(course)
      }
      render json: courselist
    end
  end


end