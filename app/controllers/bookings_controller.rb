class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = current_user.bookings
  end

  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @carpark = Carpark.find(params[:carpark_id])
    @booking.carpark = @carpark
    if @booking.save
      redirect_to bookings_path
    else
      render "carparks/show"
    end
  end

  def edit
  end

  def update
    @booking.update(booking_params)
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(
      :user_id,
      :carpark_id,
      :start_date,
      :end_date,
      :total_price
    )
  end
end
