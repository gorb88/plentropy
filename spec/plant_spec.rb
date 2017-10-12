require 'spec_helper'

describe Plant do
  let!(:user){User.create({ username: 'gorb', email: "gorb@gorb.gov"})}
  let!(:plant){Plant.create({ name: 'small cactus', species: "cactus", description: "Small and green", living: true})}

  it 'belongs to a user' do

  end

  describe 'properties' do
    it 'has name' do
      expect(plant.name).to eq("small cactus")
    end

    it 'has species' do
      expect(plant.species).to eq("cactus")
    end

    it 'has a description' do
      expect(plant.description).to eq("Small and green")
    end

    it 'has a deadness' do
      expect(plant.alive).to eq(true)
    end
  end

end
