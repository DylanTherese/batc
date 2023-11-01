class AddDayPriceToBoats < ActiveRecord::Migration[7.0]
  def change
    add_column :boats, :day_price, :integer
  end
end
