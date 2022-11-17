class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.boolean :status

      t.timestamps null: false
    end
  end
end
