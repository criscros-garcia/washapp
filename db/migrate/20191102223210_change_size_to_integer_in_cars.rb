class ChangeSizeToIntegerInCars < ActiveRecord::Migration[5.2]
  def change
    change_column :cars, :size,  'integer USING CAST(size AS integer)'
  end
end
