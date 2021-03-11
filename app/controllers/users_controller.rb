class UsersController < ApplicationController

  def index 
    @user = User.find_by(id: params[:id])
    @shows = current_user.shows.order_alpha
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save 
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else 
      render :new
    end
  end 

  def show 
    @user = User.find_by(id: params[:id])
    @shows = current_user.shows.order_alpha
  end 

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end 

end
