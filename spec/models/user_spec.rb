require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録ができる' do
      it 'すべての情報があれば登録できる' do
        expect(@user).to be_valid
      end
    end
    context '新規登録できない' do
      it 'nicknameが空では登録できない' do
        @user.nickname = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("名前を入力してください")
      end
      it 'nicknameが８文字以上では登録できない' do
        @user.nickname = "hitomimimi"
        @user.valid?
        expect(@user.errors.full_messages).to include("名前は8文字以内で入力してください")
      end
      it 'emailが空では登録ができない' do
        @user.email = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("メールアドレスを入力してください")
      end
      it 'emailが重複していては登録できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include("メールアドレスはすでに存在します")
      end
      it 'passwordが空では登録ができない' do
        @user.password = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードを入力してください")
      end
      it 'passwordが６文字以下では保存ができない' do
        @user.password = "00000"
        @user.password_confirmation = "00000"
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードは6文字以上で入力してください")
      end
      it 'passwordが一致しなければ保存ができない' do
        @user.password = "000000"
        @user.password_confirmation = "111111"
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
      end
    end
  end   
end
