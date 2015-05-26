class AddColumnImageFileToServices < ActiveRecord::Migration
  def change
    add_column :services, :image_file, :string
  end
end
