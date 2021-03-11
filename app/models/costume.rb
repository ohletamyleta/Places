class Costume < ApplicationRecord
  belongs_to :show
  belongs_to :actor
  has_many :pieces
  

  scope :by_show, -> (show_id) {where("show_id = ?", show_id)}
  
end

