class ReportsController < ApplicationController
  # GET /reports
  # GET /reports.json
  def index
    @admin_reports = Admin::Report.all
  end

  # GET /reports/1
  # GET /reports/1.json
  def show
  end
end
