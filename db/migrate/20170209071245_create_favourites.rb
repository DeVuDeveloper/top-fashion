class CreateFavourites < ActiveRecord::Migration[7.0]
  def change
    create_table :favourites do |t|
      t.integer :user_id
      t.integer :product_id

      t.timestamps null: false
    end
  end
end
