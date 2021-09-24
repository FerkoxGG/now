class CreateOffersAndCoupons < ActiveRecord::Migration[6.1]
  def change
    create_table :coupons do |t|
      t.boolean :status
      t.string :item_name
      t.string :redeemed_number
      t.string :expire_date

      t.timestamps
    end
    create_table :offers do |t|
      t.string :total
      t.references :allotment, null: false, foreign_key: true
      t.references :coupon, null: false, foreign_key: true
      t.string :status, default: "active"

      t.timestamps
    end
  end
end
