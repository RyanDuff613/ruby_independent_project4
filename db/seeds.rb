# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# -----Attempts to seed db using faker ------
require('faker')

Product.destroy_all
Review.destroy_all

50.times do |index|
  Product.create!(name: Faker::Food.ingredient,
                  country_of_origin: Faker::Nation.nationality,
                  cost: Faker::Number.number(digits: 2))
    # 5.times do |index|
    #   Review.create!(author: Faker::Name.name,
    #                  rating:Faker::Number.within(range: 1..5),
    #                  product_id:Faker::Number.within(range: 1..50),
    #                  content_body:Faker::Lorem.sentence(word_count: 20))
    # end
end

p "Created #{Product.count} Products"
# p "Created #{Review.count} Reviews"

