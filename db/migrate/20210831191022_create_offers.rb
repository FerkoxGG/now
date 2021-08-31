class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers do |t|
      t.string :coupon
      t.string :total
      t.references :allotment, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
