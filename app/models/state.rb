class State < ApplicationRecord
  has_many :addresses
  has_many :faithfuls

  validates :name, presence: true, uniqueness: true
end
