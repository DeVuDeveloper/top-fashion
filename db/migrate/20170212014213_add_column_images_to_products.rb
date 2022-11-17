class AddColumnImagesToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :images, :text, :array => true, :default => []
  end
end
