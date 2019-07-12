class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user
      t.references :flat
      t.datetime :start_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
