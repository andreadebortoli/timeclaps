class ChangeTechniciansColumn < ActiveRecord::Migration
  def change
  	add_column :technicians, :name, :string
  end
end
