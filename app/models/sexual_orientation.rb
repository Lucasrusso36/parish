class SexualOrientation < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
