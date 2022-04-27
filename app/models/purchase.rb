class Purchase < ApplicationRecord

  validates :name, presence: true
  validates :price, presence: true
  validates :category, presence: true
  validates :frequency, presence: true

  belongs_to :finance

end
