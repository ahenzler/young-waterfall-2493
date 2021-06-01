class Movie < ApplicationRecord
  belongs_to :studio
  has_many :movie_actors
  has_many :actors, through: :movie_actors

  def actor_name
    actors.each do |actor|
      actor.name
    end
  end
end
