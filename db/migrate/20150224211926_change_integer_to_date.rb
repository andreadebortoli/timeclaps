class ChangeIntegerToDate < ActiveRecord::Migration
  def change
  	remove_column :works, :data
  	add_column :works, :data, :datetime
  end
end
