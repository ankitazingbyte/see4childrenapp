class NotificationsController < ApplicationController
	def index
		@admin_reports = Admin::Report.all
	end
end
