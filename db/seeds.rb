# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding database. It's going to take a while ..."

1.upto 100_000 do
  Post.create!(
    title: Faker::Book.title,
    body: Faker::Lorem.sentences(number: 3).join(' ')
  )
end
