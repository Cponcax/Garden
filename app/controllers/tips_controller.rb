class TipsController < ApplicationController
  before_action :set_tip, only: [:show, :update, :destroy]

  # GET /tips
  # GET /tips.json
  def index
    @tips = Tip.all

    render json: @tips
  end

  # GET /tips/1
  # GET /tips/1.json
  def show
    render json: @tip
  end

  # POST /tips
  # POST /tips.json
  def create
    @tip = Tip.new(tip_params)

    if @tip.save
      render json: @tip, status: :created, location: @tip
    else
      render json: @tip.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tips/1
  # PATCH/PUT /tips/1.json
  def update
    @tip = Tip.find(params[:id])

    if @tip.update(tip_params)
      head :no_content
    else
      render json: @tip.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tips/1
  # DELETE /tips/1.json
  def destroy
    @tip.destroy

    head :no_content
  end

  private

    def set_tip
      @tip = Tip.find(params[:id])
    end

    def tip_params
      params[:tip]
    end
end
