class User < ApplicationRecord
  has_many :shows
  
  validates :name, :email, presence: true 
  validates :name, :email, uniqueness: true
  has_secure_password

  

end
