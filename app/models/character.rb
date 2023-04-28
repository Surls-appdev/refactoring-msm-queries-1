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

    # Here, I'm in the Character table, taking the actor_id and matching it with the id in the Actor table.

    a_id = self.actor_id

    matching_actors = Actor.where({ :id => a_id}) #where Character table's actor_id equals Actor table's id.

    return matching_actors.at(0)
  end

  def movie

    #In the Character table, look at movie_id, and see in the Movie table where it matches "id" (movie's id).

    a_id = self.movie_id

    matching_movies = Movie.where({ :id => a_id})

    return matching_movies.at(0)
  end
end
