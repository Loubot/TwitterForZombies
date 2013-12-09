class RolesController < ApplicationController
	before_filter :remaining_roles, :current_roles

	def remaining_roles
		@zombie = Zombie.find(params[:format]) 
		if @zombie.roles != []
			@remaining = Role.where('title not in (?)',@zombie.roles.map { |role| "#{role.title}" } )
		else
			@remaining = Role.all
		end
	end
	

	def current_roles
		@current = @zombie.roles
	end

  def addrole
  	if params[:select_role]
	  	flash[:success] = params[:select_role].map { |role| "#{role}" }.join(',')
	  	@zombie.roles << Role.where('title in (?)', params[:select_role])
	  	redirect_to @zombie
	  end
  end

  def show
  end
end
