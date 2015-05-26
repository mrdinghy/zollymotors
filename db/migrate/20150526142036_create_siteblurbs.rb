class CreateSiteblurbs < ActiveRecord::Migration
  def change
    create_table :siteblurbs do |t|
      t.string :name
      t.text :blurb

      t.timestamps null: false
    end
  end
end
