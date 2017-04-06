class BattlegroupsController < ApplicationController

	def index
	end

	def show
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
			flash.now[:notice] = "An error occured, please make your selection"
			render 'new'
		end
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
