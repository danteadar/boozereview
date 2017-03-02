# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  review = Review.create(
    user_id: rand(1..2),
    brewer_name: Faker::Company.name,
    beer_name: Faker::Beer.name,
    beer_type: Faker::Beer.style,
    rating: rand(0..5),
    abv: Faker::Beer.alcohol,
    review: Faker::Hipster.paragraph,
    brewer_website: Faker::Internet.url,
    personal: false
    )
end