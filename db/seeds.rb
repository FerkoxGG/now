require 'open-uri'
# 
User.destroy_all
Allotment.destroy_all

puts "Database records wiped clean!"

puts "Creating the default user usuario@email.com"
puts "... with password 'password'"
user = User.create!(
  email: "usuario@email.com",
  # password:  Faker::Internet.password,
  password:  "password",
  first_name: "usu",
  last_name:  "ario",
  # allotments_attributes: [
  #   {
  #     name: "cheese",
  #     total: (1..10).to_a.sample
  #   },
  #   {
  #     name: "peanut butter",
  #     total: (1..10).to_a.sample
  #   }  
  # ]
  )
user.save
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
      

#allo1 = Allotment.new({
  #name: "Yogures",
  #total: "110",
  #user_id: user1.id, 
  #image_url: "https://images.unsplash.com/photo-1564149503905-7fef56abc1f2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"
  
#})

#allo2 = Allotment.new({
  #name: "mantequilla",
  #total: "150",
  #user_id: user2.id,
  #image_url: URI.open("https://images.unsplash.com/photo-1564149503905-7fef56abc1f2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80")
#})

#allo1.save!
#allo2.save 

#offer1 = Offer.new({ 
#  coupon: "oferta",
# total: "100",
#  status: "active",
#  allotment_id: allo1.id
#})

#offer1.save

#purch1 = Purchase.new({ 
#  user_id: user2.id,
#  offer_id: offer1.id
#})

#purch1.save

puts 'Creating 12 user records for database...'
12.times do
  user = User.create!(
  email:  Faker::Internet.email,
  # password:  Faker::Internet.password,
  password:  "123456",
  first_name: Faker::Name.first_name,
  last_name:  Faker::Name.last_name,
  # allotments_attributes: [
  #   {
  #     name: Faker::Dessert.variety,
  #     total: (1..10).to_a.sample,
  #     category: ["lacteos", "legumbres", "limpieza"].sample,    
  #     offers_attributes: [
  #       {
  #         coupon: (1234..1345).to_a.sample,
  #         total:  (1200..2000).to_a.sample,
  #         status: ["Disponible","Agotado","En stock","En gondola","En transporte", "active"].sample
  #       },
  #       {
  #         coupon: (1234..1345).to_a.sample,
  #         total:  (1200..2000).to_a.sample,
  #         status: ["Disponible","Agotado","En stock","En gondola","En transporte", "active"].sample
  #       },
  #       {
  #         coupon: (1234..1345).to_a.sample,
  #         total:  (1200..2000).to_a.sample,
  #         status: ["Disponible","Agotado","En stock","En gondola","En transporte", "active"].sample
  #       }
  #     ]
  # },
    # {
    #   name: Faker::Dessert.topping,
    #   total: (1..10).to_a.sample,
    #   category: ["lacteos", "legumbres", "limpieza"].sample,
    #   offers_attributes: [
    #     {
    #       coupon: (1234..1345).to_a.sample,
    #       total:  (1200..2000).to_a.sample,
    #       status: ["Disponible","Agotado","En stock","En gondola","En transporte", "active"].sample
    #     },
    #     {
    #       coupon: (1234..1345).to_a.sample,
    #       total:  (1200..2000).to_a.sample,
    #       status: ["Disponible","Agotado","En stock","En gondola","En transporte", "active"].sample
    #     },
    #     {
    #       coupon: (1234..1345).to_a.sample,
    #       total:  (1200..2000).to_a.sample,
    #       status: ["Disponible","Agotado","En stock","En gondola","En transporte", "active"].sample
    #     }
    #   ]
    # }
  #]
  
  )
end
user= User.first
Allotment.create(total: 200, name: "Torta", redeemed_number: 15, expire_date: "15-10-21", user: user, image_url: "https://images.unsplash.com/photo-1588195538326-c5b1e9f80a1b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
category: "panaderia")

Allotment.create(total: 85, name: "Cup Cake", redeemed_number: 15, expire_date: "15-10-21", user: user, image_url: "https://images.unsplash.com/photo-1550617931-e17a7b70dce2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
category: "panaderia") 

Allotment.create(total: 85, name: "Pan", redeemed_number: 15, expire_date: "15-10-21", user: user, image_url: "https://images.unsplash.com/photo-1497581175344-8a5f1a0142a5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=658&q=80",
category: "panaderia") 

Allotment.create(total: 85, name: "Yogurth", redeemed_number: 15, expire_date: "15-10-21", user: user, image_url: "https://images.unsplash.com/photo-1571230389215-b34a89739ef1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=667&q=80",
category: "lacteos")

Allotment.create(total: 85, name: "Hamburgueza", redeemed_number: 15, expire_date: "15-10-21", user: user, image_url: "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
category: "panaderia")

Allotment.create(total: 85, name: "Jugo natural", redeemed_number: 15, expire_date: "15-10-21", user: user, image_url: "https://images.unsplash.com/photo-1621263764928-df1444c5e859?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
category: "bebidas")

puts "#{User.all.count} users created!"
puts "#{Allotment.all.count} allotments created!"
puts "#{Offer.all.count} offers created!"

puts "Done!"
