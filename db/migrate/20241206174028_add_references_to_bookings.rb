class AddReferencesToBookings < ActiveRecord::Migration[8.0]
  def change
    add_column :bookings, :user_id, :bigint
    add_column :bookings, :plant_id, :bigint

    add_foreign_key :bookings, :users, column: :user_id
    add_foreign_key :bookings, :plants, column: :plant_id
  end
end
