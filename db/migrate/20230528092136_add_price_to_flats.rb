class AddPriceToFlats < ActiveRecord::Migration[7.0]
  def change
    add_column :flats, :price, :integer
  end
end
