class Admin::AdminController < ApplicationController
	layout 'admin'
	# before_action :ensure_admin_user!
	before_action :authenticate_user!
	# before_filter :require_login
	#  private
	# def not_authenticated
	# redirect_to login_path, alert: "Please login first"
	# end
 	# def ensure_admin_user!
 	# 	unless current_user and current_user.admin?
 	# 		redirect_to root_path
 	# 	end
 	# end

 	 def after_sign_in_path_for(user)
	    if user.has_role? :admin
	      admin_root_path
	    else
	      user_root_path
	    end
  	end
end

