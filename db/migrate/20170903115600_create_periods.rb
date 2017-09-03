class CreatePeriods < ActiveRecord::Migration[5.1]
  def change
    create_table :periods do |t|
      t.string :name
      t.text :image

      t.timestamps
    end
  end
end
