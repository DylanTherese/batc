# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Boat.destroy_all
User.destroy_all
user1 = User.create(username: "adminrico", password:"123456", email: "test@test.com")

Boat.create(model: "Speedy Obsession 40", category: "Speedboat", location: "Mauritius", max_guests: 10, beds: 0, length: 2, engine_power: 50, crew_number: 1 , user: user1)
Boat.create(model: "Divine Craft", category: "Catamaran", location: "Mauritius", max_guests: 25, beds: 0, length: 5, engine_power: 200, crew_number: 2 , user: user1)
Boat.create(model: "Aqua Quell", category: "Yacht", location: "Mauritius", max_guests: 10, beds: 0, length: 2, engine_power: 50, crew_number: 3 , user: user1)
Boat.create(model: "Cruisin' Harvest", category: "Cabin cruiser", location: "Mauritius", max_guests: 30, beds: 5, length: 5, engine_power: 300, crew_number: 4 , user: user1)
Boat.create(model: "High Nook", category: "Motorboat", location: "Mauritius", max_guests: 10, beds: 0, length: 2, engine_power: 150, crew_number: 5 , user: user1)
Boat.create(model: "Tender Crest", category: "Jetboat", location: "Mauritius", max_guests: 10, beds: 0, length: 2, engine_power: 175, crew_number: 6 , user: user1)
Boat.create(model: "Stout Master", category: "Sloop", location: "Mauritius", max_guests: 15, beds: 0, length: 4, engine_power: 250, crew_number: 7 , user: user1)
Boat.create(model: "Salty Admiral", category: "Yawl", location: "Mauritius", max_guests: 8, beds: 0, length: 3, engine_power: 100, crew_number: 8 , user: user1)
Boat.create(model: "Lil' Victory", category: "Cutter", location: "Mauritius", max_guests: 5, beds: 0, length: 1.5, engine_power: 50, crew_number: 9 , user: user1)
