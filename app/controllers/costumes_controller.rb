class CostumesController < ApplicationController

  def index
    @costumes = Costume.all
  end

  def new
    @costume = Costume.new
  end

  def create 
    @costume = Costume.new(costume_params)
    if @costume.save
      redirect_to costume_path(@costume)
    else
      render :new
    end
  end

  def show 
    @costume = Costume.find(params[:id])
  end 

  def edit
    @costume = Costume.find(params[:id])
  end

  def update 
    @costume= Costume.find_by(id: params[:id])
    if @costume.update(costume_params)
      redirect_to costume_path(@costume)
    else
     render :edit
    end
  end

  def destroy 
  end

  private

    def costume_params
      params.require(:costume).permit(:show_id, :actor_id, :notes, :active, :costume_id)
    end 
end
