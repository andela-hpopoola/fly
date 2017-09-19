class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.references :to
      t.references :from
      t.integer :no_of_passengers
      t.string :flight_date
      t.string :date
      t.references :airport, foreign_key: true

      t.timestamps
    end

    add_foreign_key :flights, :locations, column: :to_id, primary_key: :id
    add_foreign_key :flights, :locations, column: :from_id, primary_key: :id
  end
end
