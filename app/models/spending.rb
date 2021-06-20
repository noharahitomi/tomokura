class Spending < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :shopping_category, :account

  validates :amount, presence: true

  validates :shopping_category_id, :account_id, numericality: { other_than: 1 }

end
