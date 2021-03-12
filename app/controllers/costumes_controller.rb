class CostumesController < ApplicationController
  before_action :set_costume, only: [:show]

  def index
    @costumes = Costume.all
    @show = Show.find_by(id: params[:id])
  end

  def new
    @costume = Costume.new
  end

  def create 
    @costume = current_user.built_costumes.build(costumes_params)
    if @costume.save
      redirect_to costume_path(@costume)
    else
      render :new
    end
  end

  def show 
  end 


  

  private

    def costume_params
      params.require(:costume).permit(:show_id, :actor_id, :notes, :active, :piece_id)
    end 

    def set_costume
      @costume = Costume.find_by(id: params[:id])
      redirect_to costumes_path if !@costume
    end 

  end
