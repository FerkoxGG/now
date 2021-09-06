class AddCategoryToAllotments < ActiveRecord::Migration[6.1]
  def change
    add_column :allotments, :category, :string
    add_index :allotments, :category
  end
end
