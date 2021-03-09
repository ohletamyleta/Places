class UsersController < ApplicationController

  def index 
    #no need for a users list 
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

    #will also display all user's shows on this view page

  end 

  #are these methods needed? I don't think so.
  # def edit
  #   
  # end

  # def update 
  # end

 

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end 

end
