class OffersController < ApplicationController
  before_action :find_offer, except: [ :index, :new, :create ]
  def index
    @offers = Offer.all
  end

  def show
    @offers = Offer.new
  end

  private

  def offer_params
    params.require(:offer).permit(:coupon, :total, :allotment_id, :status)
  end

  def find_offer
    @offer = Offer.find(params[:id])
  end

end
