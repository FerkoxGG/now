class OffersController < ApplicationController
  def show
    @offer = Offer.all
  end
end
