class ChangeDataTypeForLat < ActiveRecord::Migration[5.1]
  def change
    change_column :buildings, :lat, :float
  end
end
