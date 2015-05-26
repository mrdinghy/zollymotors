class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :manufacturer_id
      t.integer :stars_ease
      t.integer :stars_quality
      t.integer :stars_price
      t.integer :stars_ontime
      t.integer :stars_attention
      t.date :service_date
      t.text :review_note
      t.boolean :recommended
      t.string :car_model
      t.integer :car_year

      t.timestamps null: false
    end
  end
end
