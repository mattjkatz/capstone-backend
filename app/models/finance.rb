class Finance < ApplicationRecord

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :amount, presence: true
  validates :category, presence: true
  validates :frequency, presence: true

  belongs_to :budget
  has_many :purchases

end
