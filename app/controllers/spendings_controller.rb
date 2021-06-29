class SpendingsController < ApplicationController
  def index
    @spendings = Spending.all
    
    # @month_total = Spending.group("YEAR(start_time)").group("MONTH(start_time)").sum(:amount)

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
    @spending = Spending.find(params[:id])
    if @spending.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  private

  def spending_parameter
    params.require(:spending).permit(:account_id, :start_time, :shopping_category_id, :amount, :content).merge(user_id: current_user.id)
  end

end
