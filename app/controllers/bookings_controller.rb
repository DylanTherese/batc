class BookingsController < ApplicationController
  before_action :set_boat, only: [:create, :new, :show, :index]

  def my_booking
    @bookings = current_user.bookings
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.boat = @boat
    @booking.user = current_user
    @booking_days = (@booking.end_date - @booking.start_date).to_i
    @booking.price = (@booking_days * @booking.boat.day_price)
    if @booking.save
      redirect_to boat_booking_path(@boat, @booking[:id])
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(task_params)
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(
      :start_date,
      :end_date
    )
  end

  def set_boat
    @boat = Boat.find(params[:boat_id])
  end
end
