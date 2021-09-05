class AllotmentsController < ApplicationController
  before_action :find_allotment, except: [ :index, :new, :create ]
  has_scope :by_category

  def index
    @category = find_category
    @category.nil? ? @allotments = Allotment.all : @allotments = Allotment.by_category(@category)
  end

  def show
    @allotments = Allotment.new
  end


private

  def allotment_params
    params.require(:allotment).permit(:name, :total, :expire_date, :user_id, :redeemed_number, :category)
  end

  def find_allotment
    @allotment = Allotment.find(params[:id])
  end

  def find_category
    params[:category]
  end
end
