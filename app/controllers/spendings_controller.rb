class SpendingsController < ApplicationController
  def index
    
  end

  def new
    @spending = Spending.new 
  end

  def create
    spending = Spending.new(spending_parameter)
    if spending.save
      redirect_to root_path
    else
      render :new
    end

  end





  private

  def spending_parameter
    params.require(:spending).permit(:account_id, :arrival_date, :shopping_category_id, :amount, :content).merge(user_id: current_user.id)
  end

end
