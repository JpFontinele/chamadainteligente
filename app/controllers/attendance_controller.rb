class AttendanceController < ApplicationController
  def create
    a = Attendance.new(attendance_params)
    if a.save
      render json: a
    else
      render json: "Error"
    end

  end

  def show
    if params[:day]
      stcourses = StudentCourse.where(student_id: params[:id])
      attjson = []
      attlist = Attendance.all
      attlist.each { |attendance|
        stcourses.each {|stc|
          if stc.course_id == attendance.course_id
            dt = attendance.start_time
            paramdt = params[:day].to_datetime
            if dt.day == paramdt.day && dt.month == paramdt.month && dt.year == paramdt.year
              attjson.append(attendance)
            end
          end
        }
      }
      print(attjson)
      render json: attjson
    end
  end

  def attendance_params
    params.require(:attendance).permit(
      :start_time,
      :end_time,
      :course_id,
      :classroom,
      :localizationx,
      :localizationy
    )
  end
end

