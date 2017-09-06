class ChangeDataTypeForLong < ActiveRecord::Migration[5.1]
  def change
    change_column :buildings, :long, :float
  end
end
