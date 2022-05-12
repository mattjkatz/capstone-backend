class Purchase < ApplicationRecord

  validates :name, presence: true
  validates :price, presence: true
  validates :category, presence: true
  validates :frequency, presence: true

  belongs_to :finance

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

end
