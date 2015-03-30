class ChangeWorksColumn < ActiveRecord::Migration
  def change
  	add_column :works, :technician_id, :integer
  end
end
