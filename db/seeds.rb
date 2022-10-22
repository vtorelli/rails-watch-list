# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "cleaning database..."
Movie.destroy_all
puts "cleaned up!"

puts "adding a movie"
20.times do
  movie = Movie.new(
    title: Faker::Movie.title,
    overview: Faker::Quote.famous_last_words,
    poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg",
    rating: [1, 2, 3, 4, 5].sample
  )
  movie.save!
  puts "Movie #{movie.title} created"
end

puts "#{movie.count} created"
