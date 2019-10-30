class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_action :set_booking, only: [:edit, :update,:destroy]

  def index
    @today_date = Date.today
    @bookings = current_user.bookings.where("start_date > ?", @today_date).sort_by { |day| day[:start_date] }
  end

  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @carpark = Carpark.find(params[:carpark_id])
    total_day = (@booking.end_date - @booking.start_date).to_f.ceil
    @total_price = @carpark.rate_day * total_day

    @booking.user = current_user
    @booking.carpark = @carpark
    @booking.total_price = @total_price
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
    if @booking.save
      redirect_to bookings_path
    else
      render :edit
    end
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
