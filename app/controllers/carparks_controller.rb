class CarparksController < ApplicationController
  before_action :set_carpark, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show, :search]

  def index
    @carparks = Carpark.all
  end

  def search
    # @carparks = Carpark.where("address ILIKE ?", "%#{params[:query]}%") 
    @carparks = Carpark.near(params[:query], 10)      # venues within 10 km of Tour Eiffel
    @start_date = (params[:date][:start_date]).to_date
    @end_date = (params[:date][:end_date]).to_date
    @bookings = Booking.where(carpark_id: @carparks.each.pluck(:id))

    if @bookings.any?
      @bookings.each do |booking|
        if booking.end_date >= @start_date && @end_date >= booking.start_date
          @carparks = @carparks.where("id != :id", id: booking.carpark.id)
        end
      end
    end

    @markers = @carparks.map do |carpark|
      {
        lat: carpark.latitude,
        lng: carpark.longitude
      }
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @carpark = Carpark.new
  end

  def create
    @carpark = Carpark.new(carpark_params)
    if @carpark.save
      redirect_to carpark_path(@carpark)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @carpark.update(carpark_params)
    redirect_to carpark_path(@carpark)
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
      :rate_day,
      :address,
      :photo
    )
  end
end
