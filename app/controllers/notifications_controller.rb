class NotificationsController < BaseController
	def index
		@admin_reports = Admin::Report.all
	end
end
