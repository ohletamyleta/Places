class CreateCostumes < ActiveRecord::Migration[6.1]
  def change
    create_table :costumes do |t|
      t.show :belongs_to
      t.actor :belongs_to
      t.text :notes
      t.boolean :active

      t.timestamps
    end
  end
end
