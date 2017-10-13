

gorb = User.new(username: "gorb", email: "gorb@gorb.gorb")
gorb.password = "gorb"
gorb.save


50.times do |i|
  user = User.create(username: Faker::Cat.name.downcase, email: Faker::Internet.safe_email)
  user.password = "password"
  user.save
end

500.times do |i|
  plant = Plant.create(
    name: Faker::Pokemon.move,
    species: Faker::Lovecraft.sentence(3, 1),
    description: Faker::Coffee.notes,
    living: Faker::Boolean.boolean(0.7),
  )
  plant.created_at = Faker::Time.between(DateTime.now - 3000, DateTime.now - 1)
  if !plant.living
    plant.died_at = Faker::Time.between(plant.created_at, DateTime.now).to_time
  end

  User.all.sample.plants << plant
end
