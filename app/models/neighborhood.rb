class Neighborhood < ApplicationRecord
  belongs_to :state
  belongs_to :city
end
