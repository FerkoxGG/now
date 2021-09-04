class PurchasesController < ApplicationController
  def create
    @purchase = Purchase.new
    @purchase.user = current_user
    @offer = Offer.find(params[:offer_id])
    @purchase.offer = @offer
    if @purchase.save
      @offer.status = "inactive"
      @offer.save
      redirect_to allotment_path(@offer.allotment), flash: { notice: 'Offer was successfully' }
    end
  end
end
