class Finances < ActiveRecord::Migration[7.0]
  def change
    remove_column :finances, :type, :string
    add_column :finances, :transaction_kind, :string
  end
end
