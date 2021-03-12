class User < ApplicationRecord
  has_many :shows
  has_many :built_costumes, foreign_key: "user_id", class_name: "Costume"
  
  validates :name, :email, presence: true 
  validates :name, :email, uniqueness: true
  has_secure_password

  

end
