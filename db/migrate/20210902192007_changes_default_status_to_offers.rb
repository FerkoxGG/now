class ChangesDefaultStatusToOffers < ActiveRecord::Migration[6.1]
  def change
    change_column_default :offers, :status, from: nil, to: "active"
    Offer.update_all(status: "active") #cambia todas las anteriores a activo
  end
end
