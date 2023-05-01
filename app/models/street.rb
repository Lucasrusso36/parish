class Street < ApplicationRecord
  belongs_to :state
  has_many :addresses

  has_many :communities

  validates :name, presence: true
end
