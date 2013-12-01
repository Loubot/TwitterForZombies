# == Schema Information
#
# Table name: assignments
#
#  id         :integer          not null, primary key
#  zombie_id  :integer
#  role_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Assignment < ActiveRecord::Base
  attr_accessible :role_id, :zombie_id
  belongs_to :zombie
  belongs_to :role
end
