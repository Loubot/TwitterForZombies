class Roles < ActiveRecord::Base
  attr_accessible :title
  has_many :assingments
  has_many :zombies, through: :assingments
end
