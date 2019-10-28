class CarparksController < ApplicationController
  before_action :set_carpark, only: [:show, :edit, :update, :destroy]

  def index
    @carparks = Carpark.all
  end

  def show
  end

  def new
    @carpark = Carpark.new
  end

  def create
    @carpark = Carpark.new(carpark_params)
    if @carpark.save
      redirect_to new_carpark_path(@carpark)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @carpark.update(carpark_params)
  end

  def destroy
    @carpark.destroy
    redirect_to carparks_path
  end

  private

  def set_carpark
    @carpark = Carpark.find(params[:id])
  end

  def carpark_params
    params.require(:carpark).permit(
      :user_id,
      :average_rating,
      :length,
      :width,
      :height,
      :latitude,
      :longitude,
      :rate_hour,
      :photo
    )
  end
end
