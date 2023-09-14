class UsersController < ApplicationController

  def index
    @users = "Hi"
  end

  def new
    @user = User.new
  end

  def create
    user = user_params
    new_user = User.create(user)
  end
end