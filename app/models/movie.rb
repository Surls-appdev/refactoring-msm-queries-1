# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord

# this converts from movie table, anything from the associated director table. just use "director". For example, @the_movie.director.name

  def director
    d_id = self.director_id

    matching_directors = Director.where({ :id => d_id})

    the_director = matching_directors.at(0)

    return the_director
  end 
  

end
