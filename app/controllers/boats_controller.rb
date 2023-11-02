class BoatsController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :set_boat, only: %i[show edit update]

  def index
    @boats = Boat.all
    if params[:query].present?
      sql_subquery = "category ILIKE :query OR location ILIKE :query"
      @boats = @boats.where(sql_subquery, query: "%#{params[:query]}%")
    end
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

  def edit
    @boat = Boat.find(params[:id])
  end

  def update
    @boat = Boat.find(params[:id])
    @boat.update(boat_params)
    redirect_to boats_path(@boat)
  end

  def destroy
    @boat = Boat.find(params[:id])
    @boat.destroy
    redirect_to boats_path, status: :see_other
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
      :day_price
    )
  end

  def set_boat
    @boat = Boat.find(params[:id])
  end
end
