class PurchaseSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :category, :frequency, :created_at, :updated_at, :finance_id, :finance

  belongs_to :finance
end
