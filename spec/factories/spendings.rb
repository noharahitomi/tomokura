FactoryBot.define do
  factory :spending do
    account_id             {2}
    start_time             {'2021-07-01'}
    shopping_category_id   {3}
    amount                 {'1000'}
    content                {'晩ご飯'}
    association :user
  end
end
