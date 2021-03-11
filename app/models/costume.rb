class Costume < ApplicationRecord
 
  belongs_to :user
  belongs_to :show
  has_many :pieces
 

  validates :name, :notes, presence: true
  

  # scope :by_show, -> (show_id) {where("show_id = ?", show_id)}
  
end

