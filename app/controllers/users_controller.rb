#**
# frozen_string_literal: true
#Module
#*

class UsersController < ApplicationController
  def index
    users = all_users
    json_response(users)
  end

  def show
    json_response({ id: @user.id, name: @user.name, 
                    email: @user.email, classes: @user.gym_classes })
  end

  def create
    @user = User.create!(user_params)
    json_response({ status: true }, :created)
  end

  def update
    @user.update(user_params)
    json_response({ status: true })
  end

  def check
    user = get_user(user_params)
    if user
      if user.authenticate(params[:password])
        json_response({ id: user.id, name: user.name, email: user.email })
      else json_response(true)
      end
    else json_response(false)
    end
  end

  def destroy
    @user.destroy
    head :no_content
  end

  private

  def user_params
    params.permit(:name, :email, :password, :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def get_user(u_params)
    User.find_by(email: u_params[:email])
  end

  def all_users
    users = User.select("id, name, email")
  end
end
