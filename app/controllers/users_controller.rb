class UsersController < ApplicationController
  before_action :get_user_or_redirect,
    only: [ :show, :edit, :update, :destroy ]

  def index
    @users = User.all.entries
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params

    if @user.save
      redirect_to user_url(@user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update_attributes( user_params )
      redirect_to user_url(@user)
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url
  end

  protected

  def get_user_or_redirect
    redirect_to users_url unless @user = User.find_by( id: params[:id] )
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
