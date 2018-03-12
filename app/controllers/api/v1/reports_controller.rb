class Api::V1::ReportsController < Api::V1::ApplicationController
	def index
	    @reports = Report.all

	    render json: @reports
    end

	  # GET /children/1
	def show
	    render json: @report
    end
end