class Piece < ApplicationRecord
  
  belongs_to :show
  belongs_to :costume

  validates :name, :category, :color, presence: true

  

  def costume_attributes=(costume_params)
    costume = Costume.find_or_create_by(costume_params)
    costume_params[:name].empty? ? self.costume : self.costume = costume
  end 

  #scope :fits_category, -> (category) {where("category LIKE ?", category)
  
  def fits_category(category)
    where("category LIKE ?", category)
  end

 

end
