class FleetsController < ApplicationController
	
	def index
		@fleets = current_user.fleets
	end

	def show
	end

	def new
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
