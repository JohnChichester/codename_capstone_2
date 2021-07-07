class UsersController < ApplicationController
  def index
    users = User.all
    render json: users.as_json
  end

  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      username: params[:username],
      password: params[:password],
      department: params[:department],
      active: true,
      admin: false,
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    user = User.find_by(id: params[:id])
    render json: user.as_json
  end

  def update
    user = User.find_by(id: params[:id])
    user.first_name = params[:first_name] || user.last_name
    user.last_name = params[:last_name] || user.last_name
    user.username = params[:username] || user.username
    user.password = params[:password] || user.password
    user.department = params[:department] || user.department
    user.active = params[:active] || user.active
    user.admin = params[:admin] || user.admin
    user.save
    render json: user.as_json
  end

  def destroy
    user = User.find_by(id: params[:id])
    if user.active == false && current_user.admin ==true
      user.destroy
      render json: { message: "User has been removed" }
    else
      user.active = false
      user.save
      render json: { message: "User has been set to inactive" }
    end
  end
end
