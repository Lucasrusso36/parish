class Neighborhood < ApplicationRecord
  belongs_to :state
  belongs_to :city

  has_many :addresses
  has_many :faithfuls

  validates :name, presence: true
end
