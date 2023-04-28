# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord

#This takes my Director ID, looks in the Movie table, anything that has my director's id. So, a filmography. So I can do @the_director.filmography.year or filmography.duration, or anything from the movie table.

  def filmography
    my_id = self.id

    matching_movies = Movie.where({ :director_id => my_id})

    return matching_movies
  end
end
