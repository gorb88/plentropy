class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :name, null: false
      t.string :species
      t.string :description
      t.boolean :living, default: true
      t.date :died_at 
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
