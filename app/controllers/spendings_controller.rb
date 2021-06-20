class SpendingsController < ApplicationController
  def index
    
  end

  def new
    @spending = Spending.new 
  end

  def create
    Spending.create(spending_parameter)
  end

end
