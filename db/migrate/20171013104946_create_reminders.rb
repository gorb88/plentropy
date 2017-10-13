class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.string :schedule, null: false
      t.string :notes
      t.string :details
      t.integer :plant_id

      t.timestamps null: false
    end
  end
end
