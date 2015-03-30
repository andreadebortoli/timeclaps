class ChangeColumnToProjects < ActiveRecord::Migration
  def change
  	remove_column :projects, :customer_id
  	add_column :projects, :customer_id, :integer
  end
end
