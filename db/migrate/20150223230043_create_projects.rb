class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :titolo
      t.integer :id_cliente
      t.string :stato

      t.timestamps
    end
  end
end
