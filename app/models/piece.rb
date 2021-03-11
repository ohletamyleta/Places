class Piece < ApplicationRecord
  
  belongs_to :show
  belongs_to :costume

  validates :name, :category, :color, presence: true
  validates_associated :costume
  

  def costume_attributes=(costume_params)
    costume = Costume.find_or_create_by(costume_params)
    costume_params[:name].empty? ? self.costume : self.costume = costume
  end 


  # changed relationships so this is the join table
  # has_many :shows, through: :costumes
  # has_many :actors, through: :costumes 


#working on returning pieces by color or by category (using Scope Methods)

#Book.where("title = ?", params[:title])

# class Book < ApplicationRecord
#   scope :out_of_print, -> { where(out_of_print: true) }
# end

# class Book < ApplicationRecord
#   scope :out_of_print, -> { where(out_of_print: true) }
#   scope :out_of_print_and_expensive, -> { out_of_print.where("price > 500") }
# end

  

end
