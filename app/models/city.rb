class City < ApplicationRecord
  belongs_to :state

  has_many :neighborhoods
  has_many :streets

  validates :name, presence: true, uniqueness: true
end
