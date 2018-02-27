class ApplicationController < ActionController::Base
  	protect_from_forgery with: :exception
   	before_action :authenticate_user!

   	protected
	   	def after_sign_up_path_for(resource)
	   		debugger
	   		
	   	end  
	    def after_sign_in_path_for(resource)

	    	if current_user.admin
	    		admin_dashboard_index_path
	    	else
	    		root_path
	    	end
# 	    	debugger
# 	      sign_in_url = new_user_session_url
# 	      if request.referer == sign_in_url
	        # super
	        # debugger
# 	      else
# 	        stored_location_for(resource) || request.referer || root_path
# 	      end
	    end
end
