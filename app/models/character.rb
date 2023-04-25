# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  def actor
    a_id = self.actor_id

    matching_actors = Actor.where({ :id => a_id})

    return matching_actors.at(0)
  end

  def movie
    a_id = self.movie_id

    matching_movies = Movies.where({ :id => a_id})

    return matching_movies.at(0)
  end
end
