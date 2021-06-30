class Spending < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :shopping_category, :account

  with_options presence: true do
    validates :amount, :start_time
  end
  validates :amount, format: { with: /\A[0-9]+\z/ }, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 99999999 }, allow_blank: true
  validates :shopping_category_id, :account_id, numericality: { other_than: 1 }
  validates :content, length: { maximum: 30}
end
