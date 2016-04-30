class FamilyImagesController < ApplicationController
  before_action :set_family_image, only: [:show, :update, :destroy]

  # GET /family_images
  # GET /family_images.json
  def index
    @family_images = FamilyImage.all

    render json: @family_images
  end

  # GET /family_images/1
  # GET /family_images/1.json
  def show
    render json: @family_image
  end

  # POST /family_images
  # POST /family_images.json
  def create
    @family_image = FamilyImage.new(family_image_params)

    if @family_image.save
      render json: @family_image, status: :created, location: @family_image
    else
      render json: @family_image.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /family_images/1
  # PATCH/PUT /family_images/1.json
  def update
    @family_image = FamilyImage.find(params[:id])

    if @family_image.update(family_image_params)
      head :no_content
    else
      render json: @family_image.errors, status: :unprocessable_entity
    end
  end

  # DELETE /family_images/1
  # DELETE /family_images/1.json
  def destroy
    @family_image.destroy

    head :no_content
  end

  private

    def set_family_image
      @family_image = FamilyImage.find(params[:id])
    end

    def family_image_params
      params[:family_image]
    end
end
