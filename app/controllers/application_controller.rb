class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
   before_action :authenticate_user!
 # load_and_authorize_resource
   	def after_sign_in_path_for(resource)
   		dashboard_index_path
	end
	
end
