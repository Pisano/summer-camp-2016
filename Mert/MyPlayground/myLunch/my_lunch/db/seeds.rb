# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  Post.create(title: Faker::Company.catch_phrase, content: Faker::Lorem.paragraph(2))

end

Post.all.each do |post|
  3.times do
    Comment.create(post_id: post.id, content: Faker::Lorem.paragraph)

  end
end
