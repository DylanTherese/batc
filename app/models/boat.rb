class Boat < ApplicationRecord
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  has_many :bookings
  belongs_to :user
  has_many_attached :photos
  validates :model, :category, :location, :max_guests, :beds, :length, presence: true

  after_create do
    puts model
  end
end
