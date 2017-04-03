class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(username: params[:sessions][:username])
  	if user && user.authenticated?(params[:sessions][:password])
  		log_in(user)
  		redirect_to user_path(user)
  	else
  		flash.now[:info] = "Username & Password do not match"
  		render 'new'
  	end
  end

  def destroy
  	log_out if logged_in?
  	flash[:success] = "Goodbye"
  	redirect_to root_path
  end

  private
  	def session_params
  		params.require(:sessions).permit(:username, :password)
  	end
end
