class UsersController < ActionController::Base
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
      redirect_to root_path
    else
      render :new
    end
  end
end