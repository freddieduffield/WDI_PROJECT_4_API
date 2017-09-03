class PeriodsController < ApplicationController
  before_action :set_period, only: [:show, :update, :destroy]

  # GET /periods
  def index
    @periods = Period.all

    render json: @periods
  end

  # GET /periods/1
  def show
    render json: @period
  end

  # POST /periods
  def create
    @period = Period.new(period_params)

    if @period.save
      render json: @period, status: :created, location: @period
    else
      render json: @period.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /periods/1
  def update
    if @period.update(period_params)
      render json: @period
    else
      render json: @period.errors, status: :unprocessable_entity
    end
  end

  # DELETE /periods/1
  def destroy
    @period.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_period
      @period = Period.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def period_params
      params.require(:period).permit(:name, :image)
    end
end
