require 'spec_helper'

describe Reminder do

  let!(:user){ User.create({ username: 'gorb', email: "gorb@gorb.gov"})}
  let!(:plant){ Plant.create({ name: 'small cactus', species: "cactus", description: "Small and green", living: true})}
  let!(:reminder){ Reminder.create( {schedule: IceCube::Schedule.new.to_yaml, notes: "mist lightly", details: "Never let plant become completely dry. Must be constantly wet"} )}

  describe "properties" do

    it "has schedule" do
      expect(reminder.schedule).not_to be_nil
    end

    it "has notes" do
      expect(reminder.notes).to eq("mist lightly")
    end

    it "has details" do
      expect(reminder.details).to eq("Never let plant become completely dry. Must be constantly wet")
    end

  end

  describe "schedule" do

  end

  describe "associations" do
    it "belongs to a plant" do
      plant.reminders << reminder
      expect(reminder.plant).to eq(plant)
    end
    it "can access user" do
      user.plants << plant
      plant.reminders << reminder
      expect(reminder.plant.user).to eq(user)
    end
  end

end
