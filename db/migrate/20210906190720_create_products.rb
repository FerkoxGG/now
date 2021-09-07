class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :brand
      t.string :description
      t.date :expiry_date
      t.integer :price
      t.integer :weight
      t.integer :cost
      t.integer :sku_id
      t.integer :taxable
      t.string :J

      t.timestamps
    end
  end
end
