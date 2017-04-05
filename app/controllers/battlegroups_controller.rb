class BattlegroupsController < ApplicationController

	def index
	end

	def show
	end

	def new
		@user = current_user
		@fleet = Fleet.find_by(id: params[:fleet_id])
		p "*"*100
		p @fleet
		@battlegroup = Battlegroup.new(fleet_id: @fleet.id)
	end

	def create
		#need to verify not at limit for X type
		@battlegroup = Battlegroup.new(battlegroup_params)
		# @battlegroup.update_attributes(:)
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
		def battlegroup_params
			params.require(:battlegroup).permit(:battlegroup_type_id)
		end
	
end
