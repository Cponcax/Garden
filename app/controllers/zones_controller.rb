class ZonesController < ApplicationController
  before_action :set_zone, only: [:show, :update, :destroy]

  # GET /zones
  # GET /zones.json
  def index
    @zones = Zone.all

    render json: @zones
  end

  # GET /zones/1
  # GET /zones/1.json
  def show
    render json: @zone
  end

  # POST /zones
  # POST /zones.json
  def create
    @zone = Zone.new(zone_params)

    if @zone.save
      render json: @zone, status: :created, location: @zone
    else
      render json: @zone.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /zones/1
  # PATCH/PUT /zones/1.json
  def update
    @zone = Zone.find(params[:id])

    if @zone.update(zone_params)
      head :no_content
    else
      render json: @zone.errors, status: :unprocessable_entity
    end
  end

  # DELETE /zones/1
  # DELETE /zones/1.json
  def destroy
    @zone.destroy

    head :no_content
  end

  def get_families
    position = params[:position]
    @families = Zone.where(position: params[:position])

    render json: @families
  end

  private

    def set_zone
      @zone = Zone.find(params[:id])
    end

    def zone_params
      params[:zone]
    end
end
