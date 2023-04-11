class Neighborhood < ApplicationRecord
  belongs_to :state
  belongs_to :city

  has_many :streets
  has_many :communities

  validates :name, presence: true
end
