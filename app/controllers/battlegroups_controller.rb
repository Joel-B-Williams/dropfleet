class BattlegroupsController < ApplicationController

	def index
	end

	def show
		@user = current_user
		@fleet = Fleet.find_by(id: params[:fleet_id])
		@battlegroup = Battlegroup.find_by(id: params[:id])
		
	end

	def new
		@user = current_user
		@fleet = Fleet.find_by(id: params[:fleet_id])
		@battlegroup = Battlegroup.new(fleet_id: @fleet.id)
	end

	def create
		#need to verify not at limit for X type
		@user = current_user
		@fleet = Fleet.find_by(id: params[:fleet_id])
		@battlegroup = Battlegroup.new(battlegroup_params)
		@battlegroup.update_attribute(:fleet_id, @fleet.id)
		if @battlegroup.save
			flash[:success] = "Battlegroup added"
			redirect_to user_fleet_path(@user, @fleet)
		else
			# flash.now[:notice] = "An error occured, please make your selection"
			render 'new'
		end
	end

	def edit
	end

	def update
	end

	def destroy
		user = current_user
		fleet = Fleet.find_by(id: params[:fleet_id])
		battlegroup = Battlegroup.find_by(id: params[:id])
		battlegroup.destroy
		flash[:success] = "Battlegroup decomissioned"
		update_cost(fleet)
		redirect_to user_fleet_path(user, fleet)
	end

	private
		def battlegroup_params
			params.require(:battlegroup).permit(:battlegroup_type_id)
		end

		# def update_cost(fleet, battlegroup)
		# 	battlegroup.update_attribute(:cost, calc_battlegroup_cost(battlegroup))
		# 	fleet.update_attribute(:cost, calc_fleet_cost(fleet))
		# end

		def update_cost(fleet)
			fleet.update_attribute(:cost, calc_fleet_cost(fleet))
		end
	
end
