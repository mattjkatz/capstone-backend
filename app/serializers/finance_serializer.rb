class FinanceSerializer < ActiveModel::Serializer
  attributes :id, :name, :amount, :category, :frequency, :tracking, :taxes, :transaction_type, :created_at, :updated_at, :budget_id, :budget, :purchases, :friendly_created_at

  has_many :purchases
  belongs_to :budget
end
