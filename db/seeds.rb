# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  Flat.create!(
    name: Faker::FunnyName.four_word_name,
    address: Faker::Address.street_address,
    description: Faker::Quotes::Shakespeare.as_you_like_it_quote,
    price_per_night: rand(20..150),
    number_of_guests: rand(1..7)
  )
end
