class CreateProductcategories < ActiveRecord::Migration[6.1]
  def change
    create_table :productcategories do |t|
      t.string :name
      t.string :description
      t.string :items
      t.string :flags

      t.timestamps
    end
  end
end
