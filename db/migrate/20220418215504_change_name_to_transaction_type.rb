class ChangeNameToTransactionType < ActiveRecord::Migration[7.0]
  def change
    remove_column :finances, :transaction_kind, :string
    add_column :finances, :transaction_type, :string
  end
end
