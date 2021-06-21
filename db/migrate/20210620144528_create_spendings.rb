class CreateSpendings < ActiveRecord::Migration[6.0]
  def change
    create_table :spendings do |t|
      t.integer  :account_id,              null: false
      t.date     :arrival_date,            null: false
      t.integer  :shopping_category_id,       null: false
      t.integer  :amount,                  null: false
      t.string   :content,                 null: false
      t.references :user,               foreign_key: true
      t.timestamps
    end
  end
end