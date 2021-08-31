class AllotmentsController < ApplicationController


  def index 
    @allotments = Allotment.all
  end

  def show 

  end
end
