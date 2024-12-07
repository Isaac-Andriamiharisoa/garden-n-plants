class CreateBookings < ActiveRecord::Migration[8.0]
  def change
    create_table :bookings do |t|
      t.integer :total_price
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
