require 'spec_helper'

describe User do
  let!(:user){User.create({ username: 'gorb', email: "gorb@gorb.gov"})}
  let!(:plant){Plant.create({ name: 'small cactus', species: "cactus", description: "Small and green", living: true})}

  it 'has a username' do
    expect(user.username).to eq("gorb")
  end
  it 'has an email' do
    expect(user.email).to eq("gorb@gorb.gov")
  end
  it 'has a password' do
    user.password = "ham"
    user.save

    expect(user.password).not_to be_nil
  end

  it 'has plants' do
    user.plants << plant
    expect(user.plants.first).to eq(plant)
  end

end
