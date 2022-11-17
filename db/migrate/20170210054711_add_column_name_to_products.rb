class AddColumnNameToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :name, :text
  end
end
