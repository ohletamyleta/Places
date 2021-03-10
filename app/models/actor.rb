class Actor < ApplicationRecord
  has_many :costumes
  has_many :shows
  has_many :pieces, through: :costumes

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :role, presence: true

  scope :order_alpha, -> { order(last_name: :desc)}
end
