# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "creating Restaurants...."

5.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category:  ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
end

puts "creating Reviws"
5.times do
  Review.create(
    rating: rand(0..5),
    content: Faker::Restaurant.review,
    restaurant_id: rand(1..5)
  )
end
puts "completed..."
