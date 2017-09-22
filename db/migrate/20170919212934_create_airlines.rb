class CreateAirlines < ActiveRecord::Migration[5.1]
  def change
    create_table :airlines do |t|
      t.string :name
      t.integer :no_of_passengers

      t.timestamps
    end
  end
end
