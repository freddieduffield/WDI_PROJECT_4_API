class CreateBuildings < ActiveRecord::Migration[5.1]
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :address
      t.integer :lat_lng, array: true, default: []
      t.text :description
      t.text :image
      t.references :user, foreign_key: true
    

      t.timestamps
    end
  end
end
