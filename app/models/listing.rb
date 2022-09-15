class Listing < ApplicationRecord
  has_many :reservations
  has_many :bookings
  has_many :missions
  validates :num_rooms, presence: true, numericality: { only_integer: true }
end
