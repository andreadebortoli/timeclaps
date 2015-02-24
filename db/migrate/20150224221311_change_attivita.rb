class ChangeAttivita < ActiveRecord::Migration
  def change
  	remove_column :works, :attività
  	add_column :works, :activity, :string
  end
end
