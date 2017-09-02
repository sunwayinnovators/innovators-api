# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# Only generate if Event is less than 10
if Event.count < 10
  puts "Generating events..."
  100.times do 
    Event.create(
      name: Faker::App.name,
      content: 3.times.map { Faker::RickAndMorty.quote }.join(" ")
    )
  end
end