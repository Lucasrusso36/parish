class Community < ApplicationRecord
  belongs_to :state
  belongs_to :city
  belongs_to :neighborhood
  belongs_to :street
  
  has_many :faithfuls

  validates :name, presence: true, uniqueness: true
end
