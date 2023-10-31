class Boat < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  validates :model, :category, :location, :max_guests, :beds, :length, presence: true
end
