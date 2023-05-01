class Address < ApplicationRecord
  belongs_to :state
  belongs_to :city
  belongs_to :neighborhood
  belongs_to :street
  has_one :additional_address_information
  belongs_to :faithful
end
