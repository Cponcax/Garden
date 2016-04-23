class TipImagesController < ApplicationController
  before_action :set_tip_image, only: [:show, :update, :destroy]

  # GET /tip_images
  # GET /tip_images.json
  def index
    @tip_images = TipImage.all

    render json: @tip_images
  end

  # GET /tip_images/1
  # GET /tip_images/1.json
  def show
    render json: @tip_image
  end

  # POST /tip_images
  # POST /tip_images.json
  def create
    @tip_image = TipImage.new(tip_image_params)

    if @tip_image.save
      render json: @tip_image, status: :created, location: @tip_image
    else
      render json: @tip_image.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tip_images/1
  # PATCH/PUT /tip_images/1.json
  def update
    @tip_image = TipImage.find(params[:id])

    if @tip_image.update(tip_image_params)
      head :no_content
    else
      render json: @tip_image.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tip_images/1
  # DELETE /tip_images/1.json
  def destroy
    @tip_image.destroy

    head :no_content
  end

  private

    def set_tip_image
      @tip_image = TipImage.find(params[:id])
    end

    def tip_image_params
      params[:tip_image]
    end
end
