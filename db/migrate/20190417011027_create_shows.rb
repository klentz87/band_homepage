class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.date :date
      t.string :city
      t.string :venue
      t.text :info

      t.timestamps
    end
  end
end
