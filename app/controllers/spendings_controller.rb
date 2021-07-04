class SpendingsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_spending, only: [:show, :edit, :update, :destroy]
  before_action :signed_in_check, only: [:show, :edit, :update, :destroy]

  def index
    

    # @month_total = Spending.group("YEAR(start_time)").group("MONTH(start_time)").sum(:amount)

  end

  def new
    @spending = Spending.new 
  end

  def create
    @spending = Spending.new(spending_parameter)
    if @spending.save
      redirect_to user_path(id: current_user)
    else
      render :new
    end
  end

  def show 
    
  end

  def edit 
    if @spending.user_id == current_user.id
      render :index
    else
      redirect_to user_path(id: current_user)
    end
  end

  def update
    if @spending.update(spending_parameter)
      redirect_to spending_path
    else
      render :edit
    end
  end

  def destroy
    if @spending.destroy
      redirect_to user_path(id: current_user)
    else
      render :show
    end
  end

  private

  def spending_parameter
    params.require(:spending).permit(:account_id, :start_time, :shopping_category_id, :amount, :content).merge(user_id: current_user.id)
  end

  def set_spending
    @spending = Spending.find(params[:id])
  end

  def signed_in_check
    unless current_user.id == @spending.user_id 
      redirect_to user_path(id: current_user)
    end
  end

end
