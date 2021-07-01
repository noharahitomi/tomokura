require 'rails_helper'

RSpec.describe Spending, type: :model do
  before do
    @spending = FactoryBot.build(:spending)
  end

  describe '支出の保存' do
    context '支出が保存できる場合' do
      it 'すべての情報が登録されていれば、保存ができる' do
      end
      it '備考欄が空でも保存ができる' do
      end
    end
    
    context '支出が保存できない場合' do
      it 'accoutが1の場合、保存ができない' do

      end
      it 'start_timeが空では保存ができない' do
      end
      it 'shopping_category_idが1の場合、保存ができない' do
      end
      it 'amountが空では保存できない' do
      end
      it 'amountが1円未満の場合、保存ができない' do
      end
      it 'amountが1000000円以上の場合、保存ができない' do
      end
end
