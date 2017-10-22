class ChangeFlightDateInFlights < ActiveRecord::Migration[5.1]
  def change
    remove_column :flights, :flight_date, :string
    add_column :flights, :flight_date, :date
  end
end
