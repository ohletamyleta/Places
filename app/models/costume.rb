class Costume < ApplicationRecord
 
  belongs_to :user
  has_many :pieces
  has_many :shows, thorugh: :pieces

  validates :name, :notes, presence: true
  

  scope :by_show, -> (show_id) {where("show_id = ?", show_id)}
  
end

