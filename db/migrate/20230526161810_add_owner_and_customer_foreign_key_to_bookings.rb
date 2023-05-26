class AddOwnerAndCustomerForeignKeyToBookings < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :bookings, :users, column: :owner_id
    add_foreign_key :bookings, :users, column: :customer_id
  end
end
