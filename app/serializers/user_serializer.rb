class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :points, :created_at, :updated_at, :budgets, :password_digest

  has_many :budgets
end
