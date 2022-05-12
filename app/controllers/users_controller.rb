class UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def show 
    user = User.find(params[:id])
    render json: user
  end

  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      points: 0,
    )
    user.save
    render json: user.as_json
  end

  def update
    user = User.find(params[:id])
    user.first_name = params[:first_name] || user.first_name
    user.last_name = params[:last_name] || user.last_name
    user.email = params[:email] || user.email
    user.password = params[:password] || user.password
    user.points = user.points
    user.save
    render json: user
  end

  def destroy
    user = User.find(params[:id])
    user.delete
    render json: {message: "Successfully deleted! Nice!"}
  end

end
