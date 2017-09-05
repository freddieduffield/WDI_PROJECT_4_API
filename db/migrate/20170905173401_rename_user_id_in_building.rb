class RenameUserIdInBuilding < ActiveRecord::Migration[5.1]
  def change
    rename_column :buildings, :user_id, :creator_id
  end
end
