class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(username: params[:session][:username])
  	if user && user.authenticated?(params[:session][:password])
  		log_in(user)
  		redirect_to root_path
  	else
  		flash.now[:info] = "Username & Password do not match"
  		render 'new'
  	end
  end

  def destroy
  end

  private
  	def session_params
  		params.require(:session).permit(:username, :password)
  	end
end
