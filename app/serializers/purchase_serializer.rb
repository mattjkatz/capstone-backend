class PurchaseSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :category, :frequency, :updated_at, :finance_id, :finance, :friendly_created_at

  belongs_to :finance
end
