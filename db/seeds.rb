require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

category = ["chinese", "italian", "japanese", "french", "belgian"]
number = 10.times.map { rand(10) }.join.to_i
# ratings = rand(5)
2.times do
  restaurant = Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.street_name, category: category.sample, phone_number: number )
  3.times do
    review = Review.new(content: Faker::Restaurant.description, rating: rand(5))
    review.restaurant = restaurant
    review.save
  end
end
