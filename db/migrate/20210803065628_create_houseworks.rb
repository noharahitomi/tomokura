class CreateHouseworks < ActiveRecord::Migration[6.0]
  def change
    create_table :houseworks do |t|
      t.integer    :points            ,null: false
      t.string     :
      t.timestamps
    end
  end
end
