class Street < ApplicationRecord
  belongs_to :state
  belongs_to :city
  belongs_to :neighborhood

  validates :name, presence: true
end
