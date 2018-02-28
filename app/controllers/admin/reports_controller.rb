class Admin::ReportsController < Admin::AdminController

 before_action :set_report, only: [:show, :edit, :update, :destroy]

  # GET /reports
  # GET /reports.json
  def index
    @admin_reports = Admin::Report.all
  end

  # GET /reports/1
  # GET /reports/1.json
  def show
  end

  # GET /reports/new
  def new
    @admin_report = Admin::Report.new
  end

  # GET /reports/1/edit
  def edit
  end

  # POST /reports
  # POST /reports.json
  def create
    @admin_report = Admin::Report.new(admin_report_params)

    respond_to do |format|
      if @admin_report.save
        format.html { redirect_to @admin_report, notice: 'Report was successfully created.' }
        format.json { render :show, status: :created, location: @admin_report }
      else
        format.html { render :new }
        format.json { render json: @admin_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reports/1
  # PATCH/PUT /reports/1.json
  def update
    respond_to do |format|
      if @admin_report.update(admin_report_params)
        format.html { redirect_to @admin_report, notice: 'Report was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_report }
      else
        format.html { render :edit }
        format.json { render json: @admin_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reports/1
  # DELETE /reports/1.json
  def destroy
    @admin_report.destroy
    respond_to do |format|
      format.html { redirect_to admin_reports_url, notice: 'Report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report
      @admin_report = Admin::Report.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_report_params
      params.require(:admin_report).permit(:child_name, :child_code, :donor_id, :donation_month, :date, :paid, :sent_by, :ngo_id)
    end
end
