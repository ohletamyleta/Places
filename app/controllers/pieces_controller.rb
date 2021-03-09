class PiecesController < ApplicationController

  def index 
    @pieces = Piece.all 
  end

  def new
    @piece = Piece.new
  end

  def create 
    @piece = Piece.new(piece_params)
    if @piece.save
      redirect_to piece_path(@piece)
    else
      render :new
    end
  end
  
  def show 
    @piece = Piece.find_by(id: params[:id])
  end 

  def edit
  end

  def update 
  end

  def destroy 
  end

  private

  def piece_params
    params.require(:piece).permit(:name, :tag_number, :category, :color, :fabric, :time_period, :ok_to_alter, :storage_location, :cleaning_method, :notes,
      :waist, :hip, :shoulder_to_shoulder, :chest, :neck, :neck_to_waist, :waist_to_hem, :sleeve_length, :inseam, :tag_size)
  end 


end
