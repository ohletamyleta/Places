class Piece < ApplicationRecord
  
  belongs_to :show
  belongs_to :costume
  
  # changing relationships so this is the join table
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
