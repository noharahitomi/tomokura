class SpendingsController < ApplicationController
  def index
    @spendings = Spending.all
  end

  def new
    @spending = Spending.new 
  end

  def create
    spending = Spending.new(spending_parameter)
    if spending.update
      redirect_to root_path
    else
      render :new
    end
  end

  def show 
    @spending = Spending.find(params[:id])
  end

  def edit 
    @spending = Spending.find(params[:id])
  end

  def update
    @spending = Spending.find(params[:id])
    if @spending.update(spending_parameter)
      redirect_to spending_path
    else
      render :edit
      @spending = Spending.find(params[:id])
    end
  end

  def destroy
    
  end

  private

  def spending_parameter
    params.require(:spending).permit(:account_id, :start_time, :shopping_category_id, :amount, :content).merge(user_id: current_user.id)
  end

end
