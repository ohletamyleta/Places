class ShowsController < ApplicationController

  def index 
    @shows = Show.all.order_alpha
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
    @show = Show.find_by(id: params[:id])
  end

  def update 
    @show = Show.find_by(id: params[:id])
    if @show.update(show_params)
      redirect_to show_path(@show)
    else
      render :edit
    end
  end


  private

  def show_params
    params.require(:show).permit(:title, :start_date, :end_date)
  end 

end
