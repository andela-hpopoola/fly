class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.belongs_to :user, index: true
      t.belongs_to :flight, index: true

      t.timestamps
    end
    add_reference :passengers, :booking, foreign_key: true
  end
end
