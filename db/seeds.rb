# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Allotment.destroy_all



puts 'Creating seeds...'
user1 = User.new({
  email:  "car@li.tos",
  password:  "1232345",
  first_name: "carl",
  last_name:  "itos"
  })
user1.save
  
user2 = User.new({
    email:  "jor@gi.to",
    password:  "1232345",
    first_name: "jor",
    last_name:  "gito"
    })
user2.save
      

allo1 = Allotment.new({
  name: "Yogures",
  total: "110",
  user_id: user1.id
})

allo2 = Allotment.create({
  name: "mantequilla",
  total: "150",
  user_id: user2.id
})

allo1.save 
allo2.save 

offer1 = Offer.new({ 
  coupon: "oferta",
  total: "100",
  status: "true",
  allotment_id: allo1.id
})

offer1.save

purch1 = Purchase.new({ 
  user_id: user2.id,
  offer_id: offer1.id
})

purch1.save

puts 'Fin!'