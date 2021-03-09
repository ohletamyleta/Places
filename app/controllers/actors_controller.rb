class ActorsController < ApplicationController

  def index 
    @actors = Actor.all
  end

  def new
    @actor = Actor.new
  end

  def create 
    @actor = Actor.new(actor_params)
    if @actor.save
      redirect_to actor_path(@actor)
    else
      render :new
    end
  end

  def show 
    @actor = Actor.find_by(id: params[:id])
  end 

  def edit
  end

  def update 
  end

  def destroy 
  end

private

  def actor_params
    params.require(:actor).permit(:first_name, :last_name, :role)
  end 

  
end
