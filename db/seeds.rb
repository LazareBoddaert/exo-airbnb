# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts 'destroy flats'
Flat.destroy_all

puts 'create flats'
50.times do
  Flat.create!(
    name: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph(sentence_count: 2),
    price_per_night: Faker::Number.between(from: 20, to: 150),
    number_of_guests: Faker::Number.between(from: 1, to: 10),
    photo: 'https://source.unsplash.com/random/?house'
  )
end
