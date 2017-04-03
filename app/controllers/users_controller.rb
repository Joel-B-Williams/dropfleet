class UsersController < ApplicationController
	
	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)
		if @user.save
			flash[:success] = "Welcome cadet."
			redirect_to root_path
		else
			# flash.now[:danger] = "Errors detected.  Activating Orbital Railguns."
			render 'new'
		end
	end

	def show
		@user = current_user
	end

	def edit
	end

	def update
	end

	def destroy
	end

	def index
	end

	private
		def user_params
			params.require(:user).permit(:username, :password, :password_confirmation)
		end

end
