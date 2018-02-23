class HomeController < ApplicationController
	skip_before_action :authenticate_user!, :only => [:index]
	
	def index
	end
	def profile
	end
	def edit_profile
	end
end
