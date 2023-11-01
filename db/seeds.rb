# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Boat.destroy_all
User.destroy_all

user1 = User.create(username: "adminrico", password: "123456", email: "test@test.com")

Boat.create(
  model: "Speedy Obsession 40",
  category: "Speedboat",
  location: "Black River",
  max_guests: 10,
  beds: 0,
  length: 2,
  engine_power: 50,
  crew_number: 1,
  user: user1,
  day_price: 11650
)

Boat.create(
  model: "Divine Craft",
  category: "Catamaran",
  location: "Tamarin",
  max_guests: 25,
  beds: 0,
  length: 5,
  engine_power: 200,
  crew_number: 2,
  user: user1,
  day_price: 22500
)

Boat.create(
  model: "Aqua Quell",
  category: "Yacht",
  location: "Riviere Noire",
  max_guests: 10,
  beds: 0,
  length: 2,
  engine_power: 50,
  crew_number: 3,
  day_price: 30000,
  user: user1
)

Boat.create(
  model: "Cruisin' Harvest",
  category: "Cabin cruiser",
  location: "Trou aux Biches",
  max_guests: 30,
  beds: 5,
  length: 5,
  engine_power: 300,
  crew_number: 4,
  day_price: 14200,
  user: user1
)

Boat.create(
  model: "High Nook",
  category: "Motorboat",
  location: "Flic En Flac",
  max_guests: 10,
  beds: 0,
  length: 2,
  engine_power: 150,
  crew_number: 5,
  day_price: 8500,
  user: user1
)

Boat.create(
  model: "Tender Crest",
  category: "Jetboat",
  location: "Blue Bay",
  max_guests: 10,
  beds: 0,
  length: 2,
  engine_power: 175,
  crew_number: 6,
  day_price: 9000,
  user: user1
)

Boat.create(
  model: "Stout Master",
  category: "Sloop",
  location: "Albion",
  max_guests: 15,
  beds: 0,
  length: 4,
  engine_power: 250,
  crew_number: 7,
  day_price: 14550,
  user: user1
)

Boat.create(
  model: "Salty Admiral",
  category: "Yawl",
  location: "Le Morne",
  max_guests: 8,
  beds: 0,
  length: 3,
  engine_power: 100,
  crew_number: 8,
  day_price: 17800,
  user: user1
)

Boat.create(
  model: "Lil' Victory",
  category: "Cutter",
  location: "Belle Mare",
  max_guests: 5,
  beds: 0,
  length: 1.5,
  engine_power: 50,
  crew_number: 9,
  day_price: 13000,
  user: user1
)
