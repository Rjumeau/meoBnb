class AddOwnerForeignKeyToOffers < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :offers, :users, column: :owner_id
  end
end
