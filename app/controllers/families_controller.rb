class FamiliesController < ApplicationController
  before_action :set_family, only: [:show, :update, :destroy]

  # GET /families
  # GET /families.json
  def index
    @families = Family.all

    render json: @families
  end

  # GET /families/1
  # GET /families/1.json
  def show
    render json: @family
  end

  # POST /families
  # POST /families.json
  def create
    @family = Family.new(family_params)

    if @family.save
      render json: @family, status: :created, location: @family
    else
      render json: @family.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /families/1
  # PATCH/PUT /families/1.json
  def update
    @family = Family.find(params[:id])

    if @family.update(family_params)
      head :no_content
    else
      render json: @family.errors, status: :unprocessable_entity
    end
  end

  # DELETE /families/1
  # DELETE /families/1.json
  def destroy
    @family.destroy

    head :no_content
  end
  
  api :GET, '/family_info?name=Rosaceae', 'Get families per name'
  param :name, String,  :desc => "Name of the Family" ,:required => true
  def get_name

    @name = Family.where("name=?", params[:name])

    render json: @name
  end

  private

    def set_family
      @family = Family.find(params[:id])
    end

    def family_params
      params[:family]
    end
end
