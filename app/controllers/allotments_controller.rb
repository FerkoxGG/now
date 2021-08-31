class AllotmentsController < ApplicationController
  before_action :find_allotment, except: [ :index, :new, :create ]

  def index
    @allotments = Allotment.all
  end

  def show
    @allotments = Allotment.new
  end


private

  def allotment_params
    params.require(:allotment).permit(:name, :total, :expire_date, :user_id, :redeemed_number)
  end

  def find_allotment
    @allotment = Allotment.find(params[:id])
  end
end
