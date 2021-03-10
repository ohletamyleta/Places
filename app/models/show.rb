class Show < ApplicationRecord
  belongs_to :user
  has_many :costumes
  has_many :pieces, through: :costumes
  has_many :actors 

  validates :title, presence: true 
  validate :not_a_duplicate

  def not_a_duplicate
    if Show.find_by(title: title, start_date: start_date, end_date: end_date, user_id: user_id)
      errors.add("show", "has already been added")
    end 
  end 
  
end
