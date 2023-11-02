class UpdateUserToBookings < ActiveRecord::Migration[7.0]
  def change
    remove_reference :bookings, :users, null: false, foreign_key: true
    add_reference :bookings, :user, null: false, foreign_key: true
  end
end
