class AllotmentsController < ApplicationController
  before_action :find_allotment, except: [ :index, :new, :create ]
  has_scope :by_category

  def index
    @category = find_category
    @categories = Allotment.select(:category).distinct.pluck(:category)
    @categories = @categories.compact
    case @category
    when nil
      @allotments = Allotment.all
    when *@categories
      @allotments = Allotment.by_category(@category)
    else
      redirect_to allotments_path
    end
  end

  def show
    @allotments = Allotment.new
  end

  private

  def allotment_params
    params.require(:allotment).permit(:name, :total, :expire_date, :user_id, :redeemed_number, :category, :image_url)
  end

  def find_allotment
    @allotment = Allotment.find(params[:id])
  end

  def find_category
    params[:category]
  end
end
