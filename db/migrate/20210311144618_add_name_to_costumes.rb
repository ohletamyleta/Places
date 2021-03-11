class AddNameToCostumes < ActiveRecord::Migration[6.1]
  def change
    add_column :costumes, :name, :string
  end
end
