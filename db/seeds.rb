User.destroy_all
Villager.destroy_all

options = ["Cranky","Jock","Lazy","Normal","Peppy","Smug","Snooty","Sisterly"]

5.times do
    User.create(islandname: Faker::Movies::HarryPotter.location,
    username: Faker::Movies::HarryPotter.character)
end

25.times do
    Villager.create(
        villagername: Faker::Games::Pokemon.name,
        personality: options.sample,
        species: Faker::Creature::Animal.name,
        user: User.all.sample

    )
end

puts "Seeded!!"