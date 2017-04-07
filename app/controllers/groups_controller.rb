class GroupsController < ApplicationController

	def index
	end

	def show
		@user = current_user
		@fleet = Fleet.find_by(id: params[:fleet_id])
		@battlegroup = Battlegroup.find_by(id: params[:battlegroup_id])
		@group = Group.find_by(id: params[:id])
	end

	def new
		@user = current_user
		@fleet = Fleet.find_by(id: params[:fleet_id])
		@battlegroup = Battlegroup.find_by(id: params[:battlegroup_id])
		@group = Group.new
	end

	def create
		@user = current_user
		@fleet = Fleet.find_by(id: params[:fleet_id])
		@battlegroup = Battlegroup.find_by(id: params[:battlegroup_id])
		@group = Group.new(group_params)
		@group.update_attribute(:cost, calc_group_cost(@group))
		@group.update_attribute(:battlegroup_id, params[:battlegroup_id])
		if @group.save
			redirect_to user_fleet_battlegroup_path(@user.id, @fleet.id, @battlegroup.id)
		else
			p "*"*80
			p params
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
		def group_params
			params.require(:group).permit(:ship_id, :group_size)
		end

end