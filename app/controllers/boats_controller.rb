class BoatsController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :set_boat, only: %i[show edit update]

  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
    if @boat.save
      redirect_to boat_path(@boat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def boat_params
    params.require(:boat).permit(
      :model,
      :category,
      :location,
      :max_guests,
      :beds,
      :length,
      :engine_power,
      :crew_number,
      photos: []
    )
  end

  def set_boat
    @boat = Boat.find(params[:id])
  end
end
