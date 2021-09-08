class AddImageColumnToAllotments < ActiveRecord::Migration[6.1]
  def change
    add_column :allotments, :image_url, :string
  end
end
