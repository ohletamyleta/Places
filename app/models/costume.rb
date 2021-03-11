class Costume < ApplicationRecord
 
  belongs_to :user
  has_many :pieces
  has_many :shows, thorugh: :pieces
  

  scope :by_show, -> (show_id) {where("show_id = ?", show_id)}
  
end

