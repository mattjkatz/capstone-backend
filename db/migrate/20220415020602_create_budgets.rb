class CreateBudgets < ActiveRecord::Migration[7.0]
  def change
    create_table :budgets do |t|
      t.integer :user_id
      t.string :name
      t.string :type

      t.timestamps
    end
  end
end
