class HomeController < BaseController
	skip_before_action :authenticate_user!, :only => [:index]
	
	def index
	end
	def change_password		 
	end
end
