class AddRequestRefToPackages < ActiveRecord::Migration[5.2]
  def change
    add_reference :packages, :request, foreign_key: true
  end
end
