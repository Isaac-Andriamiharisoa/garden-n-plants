class User < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :plants, dependent: :destroy
end
