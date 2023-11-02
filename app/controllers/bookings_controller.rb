class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    set_boat
  end

  def create
    @booking = Booking.new(@booking_params)
    @booking.boat_id = set_boat.id
    @booking.users_id = current_user.id
    set_boat
    if @booking.save
      redirect_to boat_booking_path(set_boat, @booking[:id])
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
      :end_date,
      :price,
      :boat_id
    )
  end

  def set_boat
    @boat = Boat.find(params[:boat_id])
  end
end
