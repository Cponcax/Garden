class ZoneFamiliesController < ApplicationController
  before_action :set_zone_family, only: [:show, :update, :destroy]

  # GET /zone_families
  # GET /zone_families.json
  def index
    @zone_families = ZoneFamily.all

    render json: @zone_families
  end

  # GET /zone_families/1
  # GET /zone_families/1.json
  def show
    render json: @zone_family
  end

  # POST /zone_families
  # POST /zone_families.json
  def create
    @zone_family = ZoneFamily.new(zone_family_params)

    if @zone_family.save
      render json: @zone_family, status: :created, location: @zone_family
    else
      render json: @zone_family.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /zone_families/1
  # PATCH/PUT /zone_families/1.json
  def update
    @zone_family = ZoneFamily.find(params[:id])

    if @zone_family.update(zone_family_params)
      head :no_content
    else
      render json: @zone_family.errors, status: :unprocessable_entity
    end
  end

  # DELETE /zone_families/1
  # DELETE /zone_families/1.json
  def destroy
    @zone_family.destroy

    head :no_content
  end

  api :GET, '/zone_families?position=4', 'Get families per position'
  param :position,  Integer,  :desc => "Position to Zone" ,:required => true

  def set_families
    id = params[:id]

  end

  private

    def set_zone_family
      @zone_family = ZoneFamily.find(params[:id])
    end

    def zone_family_params
      params[:zone_family]
    end
end
