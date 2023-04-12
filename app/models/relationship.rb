class Relationship < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
