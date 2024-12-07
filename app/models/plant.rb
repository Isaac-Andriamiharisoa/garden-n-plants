class Plant < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :taggings

  validates :price, presence: true
  validates :name, presence: true

  # serialize :specificitys

  PLANT_FAMILY = %w[flower tree crop bush vine]
  PLANT_SPECIFICITY = { a_lot_water: "Requires a lot of water",
                        a_lot_sun: "Needs a lot of sunlight",
                        small_water: "Requires little water",
                        small_sun: "Needs little sunlight",
                        easy: "Easy to maintain",
                        medium: "Moderately difficult to maintain",
                        hard: "Hard to maintain",
                        beginner: "Suitable for beginners" }
end
