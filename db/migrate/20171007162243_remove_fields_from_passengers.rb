class RemoveFieldsFromPassengers < ActiveRecord::Migration[5.1]
  def change
    remove_column :passengers, :dob, :date
  end
end
