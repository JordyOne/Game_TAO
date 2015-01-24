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
      session[:user_id] = @user.id
      flash[:notice] = "You signed up successfully"
      redirect_to user_path(@user.id)
    else
      render :new
    end
  end

  def show
    if session[:user_id]
      @games = Game.all
      @user = User.find(session[:user_id])
    end
  end
end