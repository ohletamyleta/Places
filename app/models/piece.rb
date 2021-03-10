class Piece < ApplicationRecord
  #belongs_to :costume 
  has_many :shows, through: :costumes
  has_many :actors, through: :costumes 
  
end
