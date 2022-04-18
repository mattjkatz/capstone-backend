class CreateFinances < ActiveRecord::Migration[7.0]
  def change
    create_table :finances do |t|
      t.integer :budget_id
      t.string :name
      t.string :amount
      t.string :type
      t.string :category
      t.string :frequency
      t.boolean :tracking
      t.string :taxes
      t.timestamps
    end
  end
end
