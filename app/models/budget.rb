class Budget < ApplicationRecord

  validates :name, presence: true
  validates :name, uniqueness: true

  belongs_to :user
  has_many :finances

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

end
