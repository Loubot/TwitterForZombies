# == Schema Information
#
# Table name: zombies
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  bio        :text
#  age        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  rotting    :boolean
#  email      :string(255)
#

class Zombie < ActiveRecord::Base
  attr_accessible :age, :bio, :name
end
