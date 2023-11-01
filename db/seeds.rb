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

speedboat = Boat.create(
  model: "Speedy Obsession 40",
  category: "Speedboat",
  location: "Black River",
  max_guests: 10,
  beds: 0,
  length: 2,
  engine_power: 50,
  crew_number: 1,
  user: user1
)
file = URI.open("https://res.cloudinary.com/dtptvufa4/image/upload/v1698755732/Speedboat4_vb1qxq_j548w7.jpg")
speedboat.photos.attach(io: file, filename: "speedboat1.jpg", content_type: "image/jpg")
speedboat.save
file = URI.open("https://res.cloudinary.com/dtptvufa4/image/upload/v1698755732/Speedboat3_clvic2_x7rk9b.jpg")
speedboat.photos.attach(io: file, filename: "speedboat2.jpg", content_type: "image/jpg")
speedboat.save
file = URI.open("https://res.cloudinary.com/dtptvufa4/image/upload/v1698755730/Speedboat_zehjno_qodnuz.jpg")
speedboat.photos.attach(io: file, filename: "speedboat3.jpg", content_type: "image/jpg")
speedboat.save

catamaran = Boat.create(
  model: "Divine Craft",
  category: "Catamaran",
  location: "Tamarin",
  max_guests: 25,
  beds: 0,
  length: 5,
  engine_power: 200,
  crew_number: 2,
  user: user1
)

file = URI.open("https://res.cloudinary.com/dtptvufa4/image/upload/v1698755730/Catamaran4_rmqoh2_mi0mbr.png")
catamaran.photos.attach(io: file, filename: "catamaran1.jpg", content_type: "image/jpg")
catamaran.save
file = URI.open("https://res.cloudinary.com/dtptvufa4/image/upload/v1698755729/Catamaran3_zcxmqs_bnxhea.jpg")
catamaran.photos.attach(io: file, filename: "catamaran2.jpg", content_type: "image/jpg")
catamaran.save
file = URI.open("https://res.cloudinary.com/dtptvufa4/image/upload/v1698755726/Catamaran_vtdud7_ejor4d.jpg")
catamaran.photos.attach(io: file, filename: "catamaran3.jpg", content_type: "image/jpg")
catamaran.save
file = URI.open("https://res.cloudinary.com/dtptvufa4/image/upload/v1698755727/Catamaran2_lflb3j_hj2hoc.jpg")
catamaran.photos.attach(io: file, filename: "catamaran1.jpg", content_type: "image/jpg")
catamaran.save

yacht = Boat.create(
  model: "Aqua Quell",
  category: "Yacht",
  location: "Riviere Noire",
  max_guests: 10,
  beds: 0,
  length: 2,
  engine_power: 50,
  crew_number: 3,
  user: user1
)

file = URI.open("https://res.cloudinary.com/dtptvufa4/image/upload/v1698755733/Yacht2_a2btpt_xeicmf.jpg")
yacht.photos.attach(io: file, filename: ".jpg", content_type: "image/jpg")
yacht.save
file = URI.open("https://res.cloudinary.com/dtptvufa4/image/upload/v1698755733/Yacht_bbkezx_sevvfm.jpg")
yacht.photos.attach(io: file, filename: ".jpg", content_type: "image/jpg")
yacht.save

cabin_cruiser = Boat.create(
  model: "Cruisin' Harvest",
  category: "Cabin cruiser",
  location: "Trou aux Biches",
  max_guests: 30,
  beds: 5,
  length: 5,
  engine_power: 300,
  crew_number: 4,
  user: user1
)

file = URI.open("https://res.cloudinary.com/dtptvufa4/image/upload/v1698755728/Cabin_cruiser_f0nqgu_oj6gsn.jpg")
cabin_cruiser.photos.attach(io: file, filename: "cabincruiser1.jpg", content_type: "image/jpg")
cabin_cruiser.save
file = URI.open("https://res.cloudinary.com/dtptvufa4/image/upload/v1698755727/Cabin_cruiser4_jipibk_qtijgj.jpg")
cabin_cruiser.photos.attach(io: file, filename: "cabincruiser2.jpg", content_type: "image/jpg")
cabin_cruiser.save
file = URI.open("https://res.cloudinary.com/dtptvufa4/image/upload/v1698755725/Cabin_cruiser2_pvvund_jc451p.jpg")
cabin_cruiser.photos.attach(io: file, filename: "cabincruiser3.jpg", content_type: "image/jpg")
cabin_cruiser.save
file = URI.open("https://res.cloudinary.com/dtptvufa4/image/upload/v1698755725/Cabin_cruiser3_vendil_qp7yqj.jpg")
cabin_cruiser.photos.attach(io: file, filename: "cabincruiser4.jpg", content_type: "image/jpg")
cabin_cruiser.save

motorboat = Boat.create(
  model: "High Nook",
  category: "Motorboat",
  location: "Flic En Flac",
  max_guests: 10,
  beds: 0,
  length: 2,
  engine_power: 150,
  crew_number: 5,
  user: user1
)

file = URI.open("https://res.cloudinary.com/dtptvufa4/image/upload/v1698755728/Motorboat_a9nhxf_apvqlo.jpg")
motorboat.photos.attach(io: file, filename: "motorboat1.jpg", content_type: "image/jpg")
motorboat.save
file = URI.open("https://res.cloudinary.com/dtptvufa4/image/upload/v1698755724/motorboat2_wobrcl_jppx9u.jpg")
motorboat.photos.attach(io: file, filename: "motorboat2.jpg", content_type: "image/jpg")
motorboat.save
file = URI.open("https://res.cloudinary.com/dtptvufa4/image/upload/v1698755733/motorboat3_vnwfub_b1gprk.jpg")
motorboat.photos.attach(io: file, filename: "motorboat3.jpg", content_type: "image/jpg")
motorboat.save
file = URI.open("https://res.cloudinary.com/dtptvufa4/image/upload/v1698755728/motorboat4_waakym_b5a7pl.jpg")
motorboat.photos.attach(io: file, filename: "motorboat4.jpg", content_type: "image/jpg")
motorboat.save

jetboat = Boat.create(
  model: "Tender Crest",
  category: "Jetboat",
  location: "Blue Bay",
  max_guests: 10,
  beds: 0,
  length: 2,
  engine_power: 175,
  crew_number: 6,
  user: user1
)

file = URI.open("https://res.cloudinary.com/dtptvufa4/image/upload/v1698755732/jetboat4_wwttd0_igbwjl.jpg")
jetboat.photos.attach(io: file, filename: "jetboat1.jpg", content_type: "image/jpg")
jetboat.save
file = URI.open("https://res.cloudinary.com/dtptvufa4/image/upload/v1698755732/jetboat2_lqqaew_hfkunr.jpg")
jetboat.photos.attach(io: file, filename: "jetboat2.jpg", content_type: "image/jpg")
jetboat.save
file = URI.open("https://res.cloudinary.com/dtptvufa4/image/upload/v1698755731/Jetboat_ovzjza_dcacau.jpg")
jetboat.photos.attach(io: file, filename: "jetboat3.jpg", content_type: "image/jpg")
jetboat.save
file = URI.open("https://res.cloudinary.com/dtptvufa4/image/upload/v1698755731/jetboat3_va8o6x_bqlxer.jpg")
jetboat.photos.attach(io: file, filename: "jetboat4.jpg", content_type: "image/jpg")
jetboat.save

sloop = Boat.create(
  model: "Stout Master",
  category: "Sloop",
  location: "Albion",
  max_guests: 15,
  beds: 0,
  length: 4,
  engine_power: 250,
  crew_number: 7,
  user: user1,
)

file = URI.open("https://res.cloudinary.com/dtptvufa4/image/upload/v1698755730/Sloop_f01bqu_nhw9cy.jpg")
sloop.photos.attach(io: file, filename: "sloop1.jpg", content_type: "image/jpg")
sloop.save
file = URI.open("https://res.cloudinary.com/dtptvufa4/image/upload/v1698755729/sloop2_pougn3_gcnem9.jpg")
sloop.photos.attach(io: file, filename: "sloop2.jpg", content_type: "image/jpg")
sloop.save

yawl = Boat.create(
  model: "Salty Admiral",
  category: "Yawl",
  location: "Le Morne",
  max_guests: 8,
  beds: 0,
  length: 3,
  engine_power: 100,
  crew_number: 8,
  user: user1
)

file = URI.open("https://res.cloudinary.com/dtptvufa4/image/upload/v1698755734/yawl2_psnom1_r4hdse.png")
yawl.photos.attach(io: file, filename: "yawl1.jpg", content_type: "image/jpg")
yawl.save
file = URI.open("https://res.cloudinary.com/dtptvufa4/image/upload/v1698755724/Yawl3_d2lygi_a5edgu.jpg")
yawl.photos.attach(io: file, filename: "yawl2.jpg", content_type: "image/jpg")
yawl.save
file = URI.open("https://res.cloudinary.com/dtptvufa4/image/upload/v1698755733/Yawl_lkqhlg_x8adcl.jpg")
yawl.photos.attach(io: file, filename: "yawl3.jpg", content_type: "image/jpg")
yawl.save

cutter = Boat.create(
  model: "Lil' Victory",
  category: "Cutter",
  location: "Belle Mare",
  max_guests: 5,
  beds: 0,
  length: 1.5,
  engine_power: 50,
  crew_number: 9,
  user: user1
)

file = URI.open("https://res.cloudinary.com/dtptvufa4/image/upload/v1698755732/cutter3_xlk0td_y4joro.jpg")
cutter.photos.attach(io: file, filename: "cutter1.jpg", content_type: "image/jpg")
cutter.save
file = URI.open("https://res.cloudinary.com/dtptvufa4/image/upload/v1698755733/Cutter_i4u9d0_ockzth.jpg")
cutter.photos.attach(io: file, filename: "cutter1.jpg", content_type: "image/jpg")
cutter.save
file = URI.open("https://res.cloudinary.com/dtptvufa4/image/upload/v1698755730/cutter_boat2_fs8qlp_rejmfy.jpg")
cutter.photos.attach(io: file, filename: "cutter1.jpg", content_type: "image/jpg")
cutter.save
