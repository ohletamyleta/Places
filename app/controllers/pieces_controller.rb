class PiecesController < ApplicationController

  def index 
    @pieces = Piece.all 
  end

  def new
    @piece = Piece.new
  end

  def create 
    @piece = Piece.new(piece_params)
    #byebug
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
    @piece = Piece.find_by(id: params[:id])
  end

  def update 
    @piece= Piece.find_by(id: params[:id])
    if @piece.update(piece_params)
      redirect_to piece_path(@piece)
    else
      render :edit
    end
  end

  def destroy 
  end

  private

  def piece_params
    params.require(:piece).permit(:name, :tag_number, :category, :color, :fabric, :time_period, :ok_to_alter, :storage_location, :cleaning_method, :notes,
      :waist, :hip, :shoulder_to_shoulder, :chest, :neck, :neck_to_waist, :waist_to_hem, :sleeve_length, :inseam, :tag_size)
  end 


end
