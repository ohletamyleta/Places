class ShowsController < ApplicationController

  def index 
    @shows = current_user.shows
  end

  def new
    @show = Show.new
  end

  def create 
    @show = current_user.shows.build(show_params)
    if @show.save
      redirect_to show_path(@show)
    else
      render :new
    end
  end 

  def show 
    @show = Show.find_by(id: params[:id])
    
  end 

  def edit
  end

  def update 
  end

  def destroy 
  end

  private

  def show_params
    params.require(:show).permit(:title, :start_date, :end_date)
  end 

end
