class ShowsController < ApplicationController

  def index 
    @shows = Show.all
  end

  def new
    @show = Show.new
  end

  def create 

  end 

  def show 
  end 

  def edit
  end

  def update 
  end

  def destroy 
  end


end
