class CreateAllotments < ActiveRecord::Migration[6.1]
  def change
    create_table :allotments do |t|
      t.string :name
      t.integer :redeemed_number
      t.string :expire_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
