class RemoveLatLngFromBuildings < ActiveRecord::Migration[5.1]
  def change
    remove_column :buildings, :lat_lng, :integer
  end
end
