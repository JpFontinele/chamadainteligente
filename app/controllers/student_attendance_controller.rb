class StudentAttendanceController < ApplicationController

  def index
    sa = StudentAttendance.where(attendance_id: params[:id])
    render json: sa
  end


  def create
    sa = StudentAttendance.new(student_attendance_params)
    if sa.save
      render json: sa
    else
      render json: "Error"
    end
  end

  def update
    sa = StudentAttendance.find(params[:id])
    if sa.update(student_attendance_params)
      render json: sa
    else
      render json: "Error"
    end
  end

  def show
    statt = StudentAttendance.where(student_id: params[:id])
    if statt
      render json: statt
    end

  end

  def student_attendance_params
    params.require(:student_attendance).permit(
      :attendance_id,
      :student_id,
      :status,
      :comment
    )
  end

end