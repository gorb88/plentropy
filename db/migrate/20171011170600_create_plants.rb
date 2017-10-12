class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :name, null: false
      t.string :species
      t.string :description
      t.boolean :living, default: true
      t.integer :user_id
    end
  end
end
