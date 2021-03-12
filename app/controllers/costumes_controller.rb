class CostumesController < ApplicationController
  before_action :set_costume, only: [:show]

  def index
    @costumes = Costume.all
    @show = Show.find_by(id: params[:id])
  end

  def new
 
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
  end 

  # def edit
  #   @costume = Costume.find(params[:id])
  # end

  # def update 
  #   @costume= Costume.find_by(id: params[:id])
  #   if @costume.update(costume_params)
  #     redirect_to costume_path(@costume)
  #   else
  #    render :edit
  #   end
  # end

  

  private

    def costume_params
      params.require(:costume).permit(:show_id, :actor_id, :notes, :active, :piece_id)
    end 

    def set_costume
      @costume = Costume.find_by(id: params[:id])
      redirect_to costumes_path if !@costume
    end 

  end
