class Actor < ApplicationRecord
  has_many :costumes
  has_many :shows
  has_many :pieces, through: :costumes
  
end
