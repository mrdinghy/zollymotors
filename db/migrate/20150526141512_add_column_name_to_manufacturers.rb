class AddColumnNameToManufacturers < ActiveRecord::Migration
  def change
    add_column :manufacturers, :name, :string
  end
end
