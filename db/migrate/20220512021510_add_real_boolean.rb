class AddRealBoolean < ActiveRecord::Migration[7.0]
  def change
    add_column :budgets, :real, :boolean
  end
end
