# == Schema Information
#
# Table name: brains
#
#  id         :integer          not null, primary key
#  zombie_id  :integer
#  status     :string(255)
#  flavour    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class BrainTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
