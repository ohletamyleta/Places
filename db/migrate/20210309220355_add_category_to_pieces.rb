class AddCategoryToPieces < ActiveRecord::Migration[6.1]
  def change
    add_column :pieces, :category, :string
  end
end
