class CreatePurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :purchases do |t|
      t.integer :finance_id
      t.string :name
      t.integer :price
      t.string :category
      t.string :frequency

      t.timestamps
    end
  end
end
