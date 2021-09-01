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
      total: (1..10).to_a.sample
    },
    {
      name: Faker::Dessert.variety,
      total: (1..10).to_a.sample
    }
  ]
  )
  puts "User #{user.id} #{user.email} created!"
  puts "Allotment #{user.allotments[0].name} created!"
  puts "Allotment #{user.allotments[1].name} created!"
end

puts "Done!"
