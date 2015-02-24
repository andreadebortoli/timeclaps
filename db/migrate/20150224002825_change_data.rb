class ChangeData < ActiveRecord::Migration
  def change
  	remove_column :works, :data
  	add_column :works, :data, :integer
  end
end
