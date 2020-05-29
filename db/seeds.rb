# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require('faker')

Food.destroy_all

50.times do |index|
  Food.create!(name: Faker::Food.ingredient,
                        country_of_origin: Faker::Nation.nationality,
                        cost: Faker::Number.decimal(digits: 2))
end

p "Created #{Food.count} Products"