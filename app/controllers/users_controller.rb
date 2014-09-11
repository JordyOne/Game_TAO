class UsersController < ApplicationController
  skip_before_filter :ensure_authentication_user

  def new
    @user = User.new
  end

  def create
    @user = User.new(
        email: params[:user][:email],
        password: params[:user][:password]
    )
    if @user.save
      flash[:notice] = "You signed up successfully"
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    if session[:user_id]
      @user = User.find(session[:user_id])
      @games = Game.all
    else
      @user = 'this is not working'
    end
  end
end