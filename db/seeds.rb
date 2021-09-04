# Se crea un usuario predeterminado y
# se crean 10 usuarios adicionales con
# 2 lotes por cada usuario


puts "Wiping database records..."
User.destroy_all
Allotment.destroy_all
puts "Database records wiped clean!"

puts "Creating the default user mauro@email.com..."
user = User.create!(
  email: "mauro@email.com",
  # password:  Faker::Internet.password,
  password:  "password",
  first_name: "mau",
  last_name:  "ro",
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
      offers_attributes: [
        {
          coupon: (1234..1345).to_a.sample,
          total:  (1200..2000).to_a.sample,
          status: ["Disponible","Agotado","En stock","En gondola","En transporte"].sample
        },
        {
          coupon: (1234..1345).to_a.sample,
          total:  (1200..2000).to_a.sample,
          status: ["Disponible","Agotado","En stock","En gondola","En transporte"].sample
        },
        {
          coupon: (1234..1345).to_a.sample,
          total:  (1200..2000).to_a.sample,
          status: ["Disponible","Agotado","En stock","En gondola","En transporte"].sample
        }
      ]
    },
    {
      name: Faker::Dessert.variety,
      total: (1..10).to_a.sample,
      offers_attributes: [
        {
          coupon: (1234..1345).to_a.sample,
          total:  (1200..2000).to_a.sample,
          status: ["Disponible","Agotado","En stock","En gondola","En transporte"].sample
        },
        {
          coupon: (1234..1345).to_a.sample,
          total:  (1200..2000).to_a.sample,
          status: ["Disponible","Agotado","En stock","En gondola","En transporte"].sample
        },
        {
          coupon: (1234..1345).to_a.sample,
          total:  (1200..2000).to_a.sample,
          status: ["Disponible","Agotado","En stock","En gondola","En transporte"].sample
        }
      ]
    }
  ]
  )
end
puts "#{User.all.count} users created!"
puts "#{Allotment.all.count} allotments created!"
puts "#{Offer.all.count} offers created!"

# Allotment.all.count.times do
#   offers_attributes: [
#     {
#       coupon: (1234..1345).to_a.sample,
#       total:  (1200..2000).to_a.sample,
#       status: ["Disponible","Agotado","En stock","En gondola","En transporte"].sample
#     },
#     {
#       coupon: (1234..1345).to_a.sample,
#       total:  (1200..2000).to_a.sample,
#       status: ["Disponible","Agotado","En stock","En gondola","En transporte"].sample
#     },
#     {
#       coupon: (1234..1345).to_a.sample,
#       total:  (1200..2000).to_a.sample,
#       status: ["Disponible","Agotado","En stock","En gondola","En transporte"].sample
#     }
#   ]
# end

puts "Done!"
