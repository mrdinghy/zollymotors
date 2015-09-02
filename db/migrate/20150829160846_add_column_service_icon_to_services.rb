class AddColumnServiceIconToServices < ActiveRecord::Migration
  def change
    add_column :services, :service_icon, :string
  end
end
