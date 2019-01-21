class Api::V1::UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    render json: @user, status: :ok
  end

  def create
    @user = User.create(user_params)
    render json: @user, status: :created
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end

end