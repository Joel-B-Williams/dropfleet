class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # include controller helpers 
  include SessionsControllerHelper
  include UsersControllerHelper
end
