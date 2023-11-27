class UserController < ApplicationController
  def create
    if Teacher.exists?(user_params[:id])
      user = Teacher.find(user_params[:id])
      type = "teacher"
    elsif Student.exists?(user_params[:id])
      user = Student.find(user_params[:id])
      type = "student"
    else
      render json: "User not found"
      return
    end

    if user.password != user_params[:password]
      render json: "Wrong password"
    else
      render json: {"name": user.name, "id": user.id, "role": type}
    end
  end

  def user_params
    params.require(:user).permit(
      :id,
      :password
    )
  end
end

