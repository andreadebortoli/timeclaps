class AddColumnsToCustomers < ActiveRecord::Migration
  def change
  	add_column :customers, :name, :string
  	add_column :customers, :city, :string
  	add_column :customers, :mail, :string
  end
end
