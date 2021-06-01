require 'rails_helper'

RSpec.describe 'the application show' do
  before(:each) do
    @studio_1 = Studio.create!(name: 'Universal Studios', location: 'Hollywood')
    @studio_2 = Studio.create!(name: 'Disney', location: 'Hollywood')

    @movie_1 = @studio_1.movies.create!(title: 'Raiders of the Lost Ark', creation_year: 1981, genre: 'Action/Adventure')
    @movie_2 = @studio_1.movies.create!(title: 'Jurassic Park', creation_year: 1990, genre: 'Thriller/Fantasy')
    @movie_3 = @studio_2.movies.create!(title: 'Moana', creation_year: 2017, genre: 'Family/Kids')
    @movie_4 = @studio_2.movies.create!(title: 'Beaty And The Beast', creation_year: 1993, genre: 'Adults/Family')
  end

  it 'displays the studio name' do
    visit "/studios/#{@studio_1.id}"
    expect(page).to have_content(@studio_1.name)
    expect(page).to have_content(@studio_1.location)
    expect(page).to have_content(@movie_1.title)
    expect(page).to have_content(@movie_2.title)
  end
end