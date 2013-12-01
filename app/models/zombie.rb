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

  has_many :assignments
  has_many :roles, through: :assignments

  has_one :brain, dependent: :destroy

  scope :rotting, where(rotting: true)
end
