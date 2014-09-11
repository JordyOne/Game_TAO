class SessionsController < ApplicationController
  skip_before_action :ensure_current_user

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:user][:email])
    if @user
      session[:user_id] = @user.id
      redirect_to user_path(session[:user_id])
    else
      flash[:base] = "Username / password don't exist"
      redirect_to root_path
    end
  end

  def destroy
    session.destroy
    redirect_to root_path
  end
end