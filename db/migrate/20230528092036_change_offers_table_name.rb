class ChangeOffersTableName < ActiveRecord::Migration[7.0]
  def change
    rename_table :offers, :flats
  end
end
