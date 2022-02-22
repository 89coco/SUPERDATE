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
Super.create(user: kubi, super_name: "spiderman", super_type: "hero", universe: "Marvel", price: "£18", availability: false)
Super.create(user: carolin, super_name: "elastic girl", super_type: "hero", universe: "Pixar", price: "£20", availability: true)
Super.create(user: david, super_name: "bane", super_type: "hero", universe: "DC", price: "£45", availability: false)
Super.create(user: emma, super_name: "the joker", super_type: "hero", universe: "Marvel", price: "£100", availability: true)

puts "created users and supers"
