class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :size, null: false
      t.string :brand, null: false
      t.string :model, null: false
      t.string :color
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
