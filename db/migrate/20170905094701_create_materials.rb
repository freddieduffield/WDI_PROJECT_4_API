class CreateMaterials < ActiveRecord::Migration[5.1]
  def change
    create_table :materials do |t|
      t.string :title
      t.text :body
      t.text :image
      t.references :user, foreign_key: true
      t.references :building, foreign_key: true

      t.timestamps
    end
  end
end
