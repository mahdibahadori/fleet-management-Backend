class UsersController < ApplicationController
  def index
    @users = User.all

    render json: @users
  end

  def show
    render json: @user
  end

  def create
    user = User.new(user_params)
    if user.save 
      render status: :created
    else
      render status: :bad_request
    end
  end

  private 

  def user_params 
    params.require(:user).permit(
      :email, :password, :user_name, 
      :driver_license_number, :driver_license_expiry, 
      :company_id, :driver_id, :is_admin)
  end
end