class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.datetime :data
      t.string :attività

      t.timestamps
    end
  end
end
