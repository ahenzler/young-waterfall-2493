

Movie.destroy_all
Studio.destroy_all
Actor.destroy_all
MovieActor.destroy_all

@studio_1 = Studio.create!(name: 'Universal Studios', location: 'Hollywood')
@studio_2 = Studio.create!(name: 'Disney', location: 'Hollywood')

@movie_1 = @studio_1.movies.create!(title: 'Raiders of the Lost Ark', creation_year: 1981, genre: 'Action/Adventure')
@movie_2 = @studio_1.movies.create!(title: 'Jurassic Park', creation_year: 1990, genre: 'Thriller/Fantasy')
@movie_3 = @studio_2.movies.create!(title: 'Moana', creation_year: 2017, genre: 'Family/Kids')
@movie_4 = @studio_2.movies.create!(title: 'Beaty And The Beast', creation_year: 1993, genre: 'Adults/Family')

@actor_1 = Actor.create!(name: 'Harrison Ford', age: 78, currently_working: false)
@actor_2 = Actor.create!(name: 'Jeff Goldblum', age: 68, currently_working: true)
@actor_3 = Actor.create!(name: 'Emma Watson', age: 31, currently_working: true)
@actor_4 = Actor.create!(name: 'Dwayne Johnson', age: 49, currently_working: true)

MovieActor.create!(actor_id: (@actor_1.id), movie_id: (@movie_1.id))
MovieActor.create!(actor_id: (@actor_2.id), movie_id: (@movie_2.id))
MovieActor.create!(actor_id: (@actor_3.id), movie_id: (@movie_3.id))
MovieActor.create!(actor_id: (@actor_4.id), movie_id: (@movie_4.id))
