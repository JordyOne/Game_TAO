class GamesController < ApplicationController

  def show
    @game = Game.find_by(id: params[:id])
    if params[:user_id] ==  "0"
      @user = User.new
      flash[:notice] = "Please sign in so you play for something"
      redirect_to new_session_path
    end
  end
end