class RemoveNameColumnToFlats < ActiveRecord::Migration[7.0]
  def change
    remove_column :flats, :name
  end
end
