class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.date :search_start
      t.date :search_end
      t.integer :manufacturer_id
      t.string :car_model
      t.integer :car_year
      t.boolean :recommended
      t.string :search_text

      t.timestamps null: false
    end
  end
end
