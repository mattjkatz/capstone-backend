class Budget < ApplicationRecord

  validates :name, presence: true
  validates :name, uniqueness: true

  belongs_to :user
  has_many :finances

end
