class Costume < ApplicationRecord
  belongs_to :show
  belongs_to :actor
  has_many :pieces
  
end
