class State < ApplicationRecord
  has_many :cities
  has_many :neighborhoods
  has_many :streets
  has_many :communities

  validates :name, presence: true, uniqueness: true
end
