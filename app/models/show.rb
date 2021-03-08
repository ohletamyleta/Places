class Show < ApplicationRecord
  belongs_to :user
  has_many :costumes
  has_many :pieces, through: :costumes
  has_many :actors 

  validates :title, presence: true 
  
end
