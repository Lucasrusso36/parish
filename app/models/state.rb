class State < ApplicationRecord
  has_many :cities
  has_many :neighborhoods
  has_many :streets

  validates :name, presence: true, uniqueness: true
end
