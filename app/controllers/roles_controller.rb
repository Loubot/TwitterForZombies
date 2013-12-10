class RolesController < ApplicationController
	before_filter :remaining, :current_roles

	def remaining
		@zombie = Zombie.find(params[:format]) 
		if @zombie.roles != []
			@remaining = Role.where('title not in (?)',@zombie.roles.map { |role| "#{role.title}" } )
		else
			@remaining = Role.all
		end
	end
	
	def addrole

	end
	def current_roles
		@current = @zombie.roles
	end

  def transact  	  	
	  @zombie.roles << Role.where('title in (?)', params[:select_role])
  	flash[:success] = "Successfully added roles: #{join(params[:select_role])}"
  	redirect_to @zombie	  
  end

  def deleterole  	
  	
  end

  def delete
  	@zombie.roles.delete(Role.where('title in (?)', params[:select_role]))
  	flash[:success] = "Successfully deleted roles: #{join(params[:select_role])}"
  	redirect_to @zombie
  end

  def show
  end

  def join(text)
  	text.map { |role| "#{role}" }.join(',')
  end
end
