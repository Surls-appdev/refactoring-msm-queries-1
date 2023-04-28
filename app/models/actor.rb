# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord

# This is a one to many. I look in the Actor table and take my actor ID and find where it matched Actor ID in the Character table.

  def characters
    my_id = self.id

    return Character.where({ :actor_id => my_id})
  end
end
