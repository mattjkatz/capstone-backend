class FinanceSerializer < ActiveModel::Serializer
  attributes :id, :name, :amount, :category, :frequency, :tracking, :taxes, :transaction_type, :created_at, :updated_at, :budget, :purchases

  has_many :purchases
  belongs_to :budget
end
