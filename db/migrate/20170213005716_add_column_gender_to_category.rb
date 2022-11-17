class AddColumnGenderToCategory < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :gender, :string
  end
end
