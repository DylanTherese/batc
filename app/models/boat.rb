class Boat < ApplicationRecord
  belongs_to :user
  validates :model, :category, :location, :max_guests, :beds, :length, presence: true
end