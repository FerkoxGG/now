# 
User.destroy_all
Allotment.destroy_all

puts "Database records wiped clean!"

puts "Creating the default user mauro@email.com..."
user = User.create!(
  email: "usuario@email.com",
  # password:  Faker::Internet.password,
  password:  "password",
  first_name: "usu",
  last_name:  "ario",
  allotments_attributes: [
    {
      name: "cheese",
      total: (1..10).to_a.sample
    },
    {
      name: "peanut butter",
      total: (1..10).to_a.sample
    }  
  ]
  )
puts "Done with the default user"

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
  status: "active",
  allotment_id: allo1.id
})

offer1.save

purch1 = Purchase.new({ 
  user_id: user2.id,
  offer_id: offer1.id
})

puts 'Creating 10 user records for database...'
10.times do
  user = User.create!(
  email:  Faker::Internet.email,
  # password:  Faker::Internet.password,
  password:  "123456",
  first_name: Faker::Name.first_name,
  last_name:  Faker::Name.last_name,
  allotments_attributes: [
    {
      name: Faker::Dessert.variety,
      total: (1..10).to_a.sample,
      category: ["lacteos", "legumbres", "limpieza"].sample,
      offers_attributes: [
        {
          coupon: (1234..1345).to_a.sample,
          total:  (1200..2000).to_a.sample,
          status: ["Disponible","Agotado","En stock","En gondola","En transporte", "active"].sample
        },
        {
          coupon: (1234..1345).to_a.sample,
          total:  (1200..2000).to_a.sample,
          status: ["Disponible","Agotado","En stock","En gondola","En transporte", "active"].sample
        },
        {
          coupon: (1234..1345).to_a.sample,
          total:  (1200..2000).to_a.sample,
          status: ["Disponible","Agotado","En stock","En gondola","En transporte", "active"].sample
        }
      ]
    },
    {
      name: Faker::Dessert.variety,
      total: (1..10).to_a.sample,
      category: ["lacteos", "legumbres", "limpieza"].sample,
      offers_attributes: [
        {
          coupon: (1234..1345).to_a.sample,
          total:  (1200..2000).to_a.sample,
          status: ["Disponible","Agotado","En stock","En gondola","En transporte", "active"].sample
        },
        {
          coupon: (1234..1345).to_a.sample,
          total:  (1200..2000).to_a.sample,
          status: ["Disponible","Agotado","En stock","En gondola","En transporte", "active"].sample
        },
        {
          coupon: (1234..1345).to_a.sample,
          total:  (1200..2000).to_a.sample,
          status: ["Disponible","Agotado","En stock","En gondola","En transporte", "active"].sample
        }
      ]
    }
  ]
  )
end
puts "#{User.all.count} users created!"
puts "#{Allotment.all.count} allotments created!"
puts "#{Offer.all.count} offers created!"

puts "Done!"
