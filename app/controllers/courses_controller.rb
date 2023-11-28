class CoursesController < ApplicationController

  def index
    c = Course.all
    render json: c
  end

  def show
    course = Course.where(teacher_id: params[:id])
    if course
      render json: course
    end
  end


end
