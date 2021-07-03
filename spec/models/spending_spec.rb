require 'rails_helper'

RSpec.describe Spending, type: :model do
  before do
    user = FactoryBot.create(:user)
    @spending = FactoryBot.build(:spending, user_id: user.id)
  end

  describe '支出の保存' do
    context '支出が保存できる場合' do
      it 'すべての情報が登録されていれば、保存ができる' do
        expect(@spending).to be_valid
      end
      it '備考欄が空でも保存ができる' do
        @spending.content = ''
        expect(@spending).to be_valid
      end
    end
    
    context '支出が保存できない場合' do
      it 'accoutが1の場合、保存ができない' do
        @spending.account_id = 1
        @spending.valid?
        expect(@spending.errors.full_messages).to include("お支払いは1以外の値にしてください")
      end
      it 'start_timeが空では保存ができない' do
        @spending.start_time = ''
        @spending.valid?
        expect(@spending.errors.full_messages).to include("Start timeを入力してください")
      end
      it 'shopping_category_idが1の場合、保存ができない' do
        @spending.shopping_category_id = 1
        @spending.valid?
        expect(@spending.errors.full_messages).to include("支出のカテゴリーは1以外の値にしてください")
      end
      it 'amountが空では保存できない' do
        @spending.amount = ''
        @spending.valid?
        expect(@spending.errors.full_messages).to include("支払い金額を入力してください")
      end
      it 'amountが1円未満の場合、保存ができない' do
        @spending.amount = 0
        @spending.valid?
        expect(@spending.errors.full_messages).to include("支払い金額は1以上の値にしてください")
      end
      it 'amountが100000000円以上の場合、保存ができない' do
        @spending.amount = 100000000
        @spending.valid?
        expect(@spending.errors.full_messages).to include("支払い金額は99999999以下の値にしてください")
      end
      it 'amountが半角数字でなければ保存できない' do
        @spending.amount = '１２３００'
        @spending.valid?
        expect(@spending.errors.full_messages).to include("支払い金額は数値で入力してください")
      end
    end
  end
end
