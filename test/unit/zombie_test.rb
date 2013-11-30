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
#  email      :string(255)
#  rotting    :boolean
#

require 'test_helper'

class ZombieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
