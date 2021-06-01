# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.destroy_all
Studio.destroy_all
# Actor.destroy_all

@studio_1 = Studio.create!(name: 'Universal Studios', location: 'Hollywood')
@studio_2 = Studio.create!(name: 'Disney', location: 'Hollywood')

@movie_1 = @studio_1.movies.create!(title: 'Raiders of the Lost Ark', creation_year: 1981, genre: 'Action/Adventure')
@movie_2 = @studio_1.movies.create!(title: 'Jurassic Park', creation_year: 1990, genre: 'Thriller/Fantasy')
@movie_3 = @studio_2.movies.create!(title: 'Moana', creation_year: 2017, genre: 'Family/Kids')
@movie_4 = @studio_2.movies.create!(title: 'Beaty And The Beast', creation_year: 1993, genre: 'Adults/Family')

# @actor_1 = Actor.create!(name: 'Harrison Ford', age: 78, currently_working: false)
# @actor_2 = Actor.create!(name: 'Jeff Goldblum', age: 68, currently_working: true)
# @actor_3 = Actor.create!(name: 'Emma Watson', age: 31, currently_working: true)
# @actor_4 = Actor.create!(name: 'Dwayne Johnson', age: 49, currently_working: true)