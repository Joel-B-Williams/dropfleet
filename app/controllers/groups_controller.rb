class GroupsController < ApplicationController

	def index
	end

	def show
	end

	def new
		@user = current_user
		@fleet = Fleet.find_by(id: params[:fleet_id])
		@battlegroup = Battlegroup.find_by(id: params[:battlegroup_id])
		@group = Group.new
	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end

end
