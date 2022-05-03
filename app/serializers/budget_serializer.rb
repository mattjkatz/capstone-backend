class BudgetSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :created_at, :updated_at, :finances, :user
  has_many :finances
end
