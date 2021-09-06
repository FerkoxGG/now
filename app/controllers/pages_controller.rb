class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @categories = Allotment.select(:category).distinct.pluck(:category)
    @categories = @categories.compact
  end
end
