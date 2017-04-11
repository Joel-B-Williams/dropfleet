class FleetsController < ApplicationController
	
	def index
		@user = current_user
		@fleets = Fleet.where(user_id: @user.id)
	end

	def show
		@user = current_user
		@fleet = Fleet.find_by(id: params[:id])
		@battlegroups = @fleet.battlegroups.joins(:battlegroup_type).merge(BattlegroupType.order(:id))
		# Add groups to show by default under BG type?
	end

	def new
		@user = current_user
		@fleet = Fleet.new( user_id: @user.id )
	end

	def create
		#requires someone be logged in - add verification
		@user = current_user
		# cost should be defaulting from migration but isn't - FIX
		@fleet = Fleet.new( user_id: @user.id, cost: 0 )
		@fleet.update_attributes(fleet_params)

		if @fleet.save
			flash[:success] = "New fleet created"
			redirect_to user_fleet_path(@user, @fleet)
		else
			render 'new'
		end
	end

	def edit
	end

	def update
	end

	def destroy
		Fleet.find_by(id: params[:id]).destroy
		flash[:success] = 'Fleet eradicated'
		redirect_to user_fleets_path
	end

	private

		def fleet_params
			params.require(:fleet).permit(:name, :faction_id, :points_level)
		end

		# def auto_fleet_params
		# 	params.permit(:cost, :user_id)
		# end

end
