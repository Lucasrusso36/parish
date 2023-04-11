class Street < ApplicationRecord
  belongs_to :state
  belongs_to :city
  belongs_to :neighborhood

  has_many :communities

  validates :name, presence: true
end
