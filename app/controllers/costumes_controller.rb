class CostumesController < ApplicationController

  def index
    @costume = Costume.all 
  end

  def new
    @costume = Costume.new
  end

  def show 
    @costume = Costume.find(params[:id])
  end 

  def edit
    @costume = Costume.find(params[:id])
  end

  def update 
  end

  def destroy 
  end


end
