class CreatePassengers < ActiveRecord::Migration[5.1]
  def change
    create_table :passengers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.date :dob
      t.string :phone

      t.timestamps
    end
  end
end
