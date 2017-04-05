class FleetsController < ApplicationController
	
	def index
		@fleets = current_user.fleets
	end

	def show
	end

	def new
		@fleet = Fleet.new
	end

	def create
		#requires someone be logged in - add verification
		@fleet = Fleet.new(fleet_params)
		@fleet.update_attributes( cost: 0, user_id:current_user.id )
		if @fleet.save
			flash[:success] = "New fleet created"
			redirect_to fleets_path
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
		redirect_to fleets_path
	end

	private

		def fleet_params
			params.require(:fleet).permit(:name, :faction_id, :points_level)
		end

		# def auto_fleet_params
		# 	params.permit(:cost, :user_id)
		# end

end
