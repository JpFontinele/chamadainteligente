class SubjectsController < ApplicationController

  def show
    subject = Subject.find(params[:id])
    if subject
      render json: subject.name
    end
  end


end
