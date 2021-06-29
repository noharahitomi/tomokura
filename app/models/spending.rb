class Spending < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :shopping_category, :account

  validates :amount, presence: true, format: { with: /\A[0-9]+\z/ }, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 99999999 }
  validates :start_time, presence: true
  validates :shopping_category_id, :account_id, numericality: { other_than: 1 }
  validates :content, length: { maximun: 30}


end
