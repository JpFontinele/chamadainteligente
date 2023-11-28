class TeacherController < ApplicationController


  def show
    teacher = Teacher.find(params[:id])
    if teacher
      render json: teacher.name
    end
  end

end