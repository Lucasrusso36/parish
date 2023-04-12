class City < ApplicationRecord
  belongs_to :state

  has_many :neighborhoods
  has_many :streets
  has_many :communities
  has_many :faithfuls

  validates :name, presence: true, uniqueness: true
end
