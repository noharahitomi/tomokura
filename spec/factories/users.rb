FactoryBot.define do
  factory :user do
    nickname               {'test'}
    email                  {'test@examle'}
    password               {'000000'}
    password_confirmation  {password}
  end
end