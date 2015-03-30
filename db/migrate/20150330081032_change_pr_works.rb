class ChangePrWorks < ActiveRecord::Migration
  def change
  	remove_column :projects, :id_cliente
  
  end
end
