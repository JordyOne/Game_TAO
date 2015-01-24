class SessionsController < ApplicationController
  skip_before_action :ensure_current_user

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      puts @user.id
      puts session[:user_id]
      puts "80" * 80
      redirect_to user_path(session[:user_id])
    else
      flash[:base] = "Username / password combination does not exist"
      render new_session_path
    end
  end

  def destroy
    session.destroy
    redirect_to root_path
  end
end