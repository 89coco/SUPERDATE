puts "cleaning db"
Super.destroy_all
User.destroy_all
puts "Database clean"

puts "creating users"
kubi = User.create(user_name: "kubi_g", email: "kubigdogan@gmail.com", password: "password")
carolin = User.create(user_name: "carolins", email: "carolins@gmail.com", password: "password")
david = User.create(user_name: "davidm", email: "davidm@gmail.com", password: "password")
emma = User.create(user_name: "emmac", email: "emmac@gmail.com", password: "password")

puts "creating supers"

Super.create!(user: kubi, super_name: "spiderman", super_type: "hero", universe: "Marvel", availability: false, price: 3)
Super.create!(user: carolin, super_name: "elastic girl", super_type: "hero", universe: "Pixar", availability: true, price: 4)
Super.create!(user: david, super_name: "bane", super_type: "hero", universe: "DC", availability: false, price: 5)
Super.create!(user: emma, super_name: "the joker", super_type: "hero", universe: "Marvel", availability: true, price: 2)

puts "created users and supers"
