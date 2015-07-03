class AddColumnsToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :startyear, :integer
    add_column :searches, :startmonth, :integer
    add_column :searches, :endyear, :integer
    add_column :searches, :endmonth, :integer
  end
end
