class RegistrationsController < Devise::RegistrationsController


   	protected
	   	def after_sign_up_path_for(resource)
	   		current_user.add_role params[:role]
	   		root_url
	   	end 
end