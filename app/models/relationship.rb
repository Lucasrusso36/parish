class Relationship < ApplicationRecord
  has_many :faithfuls
  
  validates :name, presence: true, uniqueness: true
end
