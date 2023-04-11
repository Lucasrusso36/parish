class Neighborhood < ApplicationRecord
  belongs_to :state
  belongs_to :city

  has_many :streets

  validates :name, presence: true
end