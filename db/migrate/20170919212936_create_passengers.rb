class CreatePassengers < ActiveRecord::Migration[5.1]
  def change
    create_table :passengers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.date :dob
      t.string :phone
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
