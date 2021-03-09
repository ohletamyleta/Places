class RemoveTypeFromPieces < ActiveRecord::Migration[6.1]
  def change
    remove_column :pieces, :type, :string
  end
end
