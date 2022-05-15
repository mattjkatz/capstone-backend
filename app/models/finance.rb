class Finance < ApplicationRecord

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :amount, presence: true
  validates :frequency, presence: true

  belongs_to :budget
  has_many :purchases

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

end
