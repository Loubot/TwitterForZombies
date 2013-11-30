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

class Brain < ActiveRecord::Base
  attr_accessible :flavour, :status, :zombie_id
  belongs_to :zombie
end
