class Booking < ApplicationRecord
  belongs_to :user, class_name: "user", foreign_key: "user_id"
  belongs_to :plant, class_name: "plant", foreign_key: "plant_id"
end
