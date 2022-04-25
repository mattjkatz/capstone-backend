class Finance < ApplicationRecord

  belongs_to :budget
  has_many :purchases

end
