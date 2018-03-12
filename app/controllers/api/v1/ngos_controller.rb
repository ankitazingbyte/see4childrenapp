class Api::V1::NgosController < Api::V1::ApplicationController
  before_action :set_ngo, only: [:show, :update, :destroy]

  # GET /ngos
  def index
    @ngos = Ngo.all

    render json: @ngos
  end

  # GET /ngos/1
  def show
    render json: @ngo
  end

  # POST /ngos
  def create
    @ngo = Ngo.new(ngo_params)
    if @ngo.save
      render json: @ngo, status: :created
    else
      render json: @ngo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ngos/1
  def update
    if @ngo.update(ngo_params)
      render json: @ngo
    else
      render json: @ngo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ngos/1
  def destroy
    @ngo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ngo
      @ngo = Ngo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ngo_params
      params.permit(:name, :email, :state, :city, :zip_code, :address, :director, :no_of_children, :total_staff, :establish, :area)
    end
end