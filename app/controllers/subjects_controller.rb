class SubjectsController < ApplicationController

  def index
    subject = Subject.all
    render json: subject
  end

  def show
    subject = Subject.find(params[:id])
    if subject
      render json: subject.name
    end
  end

  def create
    subject = Subject.new(subject_params)
    if subject.save
      render json: subject
    end
  end

  def destroy
    subject = Subject.find(params[:id])
    if subject
      name = subject.name
      subject.destroy
      render json: "A disciplina " + name + " foi deletada com sucesso"
    end
  end

  def subject_params
    params.require(:subject).permit(
      :id,
      :name
    )
  end
end
