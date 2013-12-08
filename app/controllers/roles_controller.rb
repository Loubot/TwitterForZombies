class RolesController < ApplicationController
	before_filter :remaining_roles, :current_roles

	def remaining_roles
		@zombie = Zombie.find(params[:zombie_id]) 
		@remaining = Role.where('title not in (?)',@zombie.roles.map { |role| "#{role.title}" } )
	end
	

	def current_roles
		@current = Role.where('title in (?)', @zombie.roles.map { |role| "#{role.title}"} )
	end

  def addRole
  	
  end
end
