class Budget < ActiveRecord::Migration[7.0]
  def change
    remove_column :budgets, :type, :string
  end
end
