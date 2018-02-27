class Admin::NgosController < ApplicationController
  before_action :set_admin_ngo, only: [:show, :edit, :update, :destroy]

  # GET /admin/ngos
  # GET /admin/ngos.json
  def index
    @admin_ngos = Admin::Ngo.all
  end

  # GET /admin/ngos/1
  # GET /admin/ngos/1.json
  def show
    @profiles = Profile.all
    @children = Child.all
    @events = Event.all
  end

  # GET /admin/ngos/new
  def new
    @admin_ngo = Admin::Ngo.new
  end

  # GET /admin/ngos/1/edit
  def edit
  end

  # POST /admin/ngos
  # POST /admin/ngos.json
  def create
    @admin_ngo = Admin::Ngo.new(admin_ngo_params)

    respond_to do |format|
      if @admin_ngo.save
        format.html { redirect_to @admin_ngo, notice: 'Ngo was successfully created.' }
        format.json { render :show, status: :created, location: @admin_ngo }
      else
        format.html { render :new }
        format.json { render json: @admin_ngo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/ngos/1
  # PATCH/PUT /admin/ngos/1.json
  def update
    respond_to do |format|
      if @admin_ngo.update(admin_ngo_params)
        format.html { redirect_to @admin_ngo, notice: 'Ngo was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_ngo }
      else
        format.html { render :edit }
        format.json { render json: @admin_ngo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/ngos/1
  # DELETE /admin/ngos/1.json
  def destroy
    @admin_ngo.destroy
    respond_to do |format|
      format.html { redirect_to admin_ngos_url, notice: 'Ngo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_ngo
      @admin_ngo = Admin::Ngo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_ngo_params
      params.require(:admin_ngo).permit(:name, :no_of_children, :address)
    end
end
