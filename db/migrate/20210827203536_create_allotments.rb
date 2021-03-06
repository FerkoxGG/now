class CreateAllotments < ActiveRecord::Migration[6.1]
  def change
    create_table :allotments do |t|
      t.decimal :total
      t.string :name
      t.integer :redeemed_number
      t.date :expire_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
