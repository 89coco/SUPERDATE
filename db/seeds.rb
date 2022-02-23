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

Super.create!(user: kubi, super_name: "spiderman", super_type: "hero", universe: "Marvel", availability: false, price: 3000, description: "Spider-Man has spider-like abilities including superhuman strength and the ability to cling to most surfaces. He is also extremely agile and has amazing reflexes. Spider-Man also has a spider sense, that warns him of impending danger.", strength: 5, humour: 5 , kindness: 5 , romance: 5)
Super.create!(user: carolin, super_name: "elastic girl", super_type: "hero", universe: "Pixar", availability: true, price: 3200, description: "Elastigirl is an elastic and dexterous superheroine who can stretch any part of her body to great lengths, and mold it into several shapes and sizes")
Super.create!(user: david, super_name: "bane", super_type: "hero", universe: "DC", availability: false, price: 1800, description: "Bane is a supervillain possessing a mix of brute strength and exceptional intelligence, Bane is often credited as the only villain to have broken the bat; defeating him both physically and mentally.")
Super.create!(user: emma, super_name: "the joker", super_type: "hero", universe: "Marvel", availability: true, price: 2100, description: "The Joker is noted for his clownlike appearance and sick humour. The Joker, initially portrayed as a small-time crook, was disfigured and driven insane by an accident with toxic chemicals. He was depicted with chalk-white skin, ruby-red lips permanently fixed in a demonic grin, and bright green hair")


puts "created users and supers"
