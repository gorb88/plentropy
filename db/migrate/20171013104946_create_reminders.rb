class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.string :rules, null: false
      t.integer :plant_id
    end
  end
end
