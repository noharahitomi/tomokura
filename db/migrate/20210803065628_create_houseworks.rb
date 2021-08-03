class CreateHouseworks < ActiveRecord::Migration[6.0]
  def change
    create_table :houseworks do |t|
      t.integer    :points            , null: false
      t.datetime   :start_time        , null: false
      t.integer    :work_category     , null: false
      t.references :user              , foreign_key: true
      
      t.timestamps
    end
  end
end
