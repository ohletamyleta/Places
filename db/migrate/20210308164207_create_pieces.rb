class CreatePieces < ActiveRecord::Migration[6.1]
  def change
    create_table :pieces do |t|
      t.string :name
      t.integer :tag_number
      t.string :type
      t.string :color
      t.string :fabric
      t.string :time_period
      t.string :ok_to_alter
      t.string :storage_location
      t.string :cleaning_method
      t.text :notes
      t.string :waist
      t.string :hip
      t.string :shoulder_to_shoulder
      t.string :chest
      t.string :neck
      t.string :neck_to_waist
      t.string :waist_to_hem
      t.string :sleeve_length
      t.string :inseam
      t.string :tag_size

      t.timestamps
    end
  end
end
