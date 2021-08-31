class OffersController < ApplicationController
  def show
    @offer = Allotment.all
  end
end
