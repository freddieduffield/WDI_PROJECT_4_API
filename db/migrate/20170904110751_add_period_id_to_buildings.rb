class AddPeriodIdToBuildings < ActiveRecord::Migration[5.1]
  def change
    add_reference :buildings, :period, foreign_key: true
  end
end
