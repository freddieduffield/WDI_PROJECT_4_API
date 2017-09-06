class AddDetailsToBuildings < ActiveRecord::Migration[5.1]
  def change
    add_column :buildings, :lat, :integer
    add_column :buildings, :long, :integer
  end
end
