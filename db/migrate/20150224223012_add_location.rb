class AddLocation < ActiveRecord::Migration
  def change
  	  	add_column :works, :location_id, :integer

  end
end
