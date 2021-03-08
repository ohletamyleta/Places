class CreateCostumes < ActiveRecord::Migration[6.1]
  def change
    create_table :costumes do |t|
      t.belongs_to :show 
      t.belongs_to :actor 
      t.text :notes
      t.boolean :active

      t.timestamps
    end
  end
end
