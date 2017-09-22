class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.references :destination
      t.string :flight_date
      t.belongs_to :airport, index: true
      t.belongs_to :airline, index: true

      t.timestamps
    end
  end
end