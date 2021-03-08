class CreateShows < ActiveRecord::Migration[6.1]
  def change
    create_table :shows do |t|
      t.string :title
      t.string :start_date
      t.string :end_date
      t.user :belongs_to

      t.timestamps
    end
  end
end
