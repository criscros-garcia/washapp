class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.references :client
      t.references :partner

      t.timestamps
    end

    add_foreign_key :requests, :users, column: :client_id, primary_key: :id
    add_foreign_key :requests, :users, column: :partner_id, primary_key: :id
  end
end
