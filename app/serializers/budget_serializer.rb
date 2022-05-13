class BudgetSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :real, :created_at, :updated_at, :finances, :user, :friendly_created_at
  has_many :finances
end
