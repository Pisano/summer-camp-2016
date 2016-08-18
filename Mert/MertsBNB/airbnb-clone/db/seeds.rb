# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 5.times do
#   User.create(first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     password: Faker::Internet.password,
#     email: Faker::Internet.email,
#     phone_number: Faker::PhoneNumber.cell_phone,
#     profile_picture_url: "http://lorempixel.com/200/200")
# end


# User.all.each do |user|

#   Listing.create(image_url: "http://lorempixel.com/500/200",
#     title: Faker::Company.catch_phrase,
#     sharing_type: Listing.sharing_types.keys.sample,
#     guest_capacity: Faker::Number.between(1,10),
#     bed_capacity: Faker::Number.between(1,5) ,
#     daily_price: Faker::Commerce.price,
#     user_id: user.id
#     )
# end

User.create(first_name: "Jesus",
    last_name: "Christ" ,
    password: "1",
    email: "a@b",
    phone_number: "1234567890",
    profile_picture_url: "http://lorempixel.com/200/200")




