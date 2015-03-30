class AddColumn < ActiveRecord::Migration
  def change
  	add_column :works, :column, :string
  end
end
