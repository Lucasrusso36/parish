class Faithful < ApplicationRecord
  belongs_to :community
  belongs_to :sexual_orientation
  belongs_to :relationship
  belongs_to :state
  belongs_to :city
  belongs_to :neighborhood
  belongs_to :street

  has_many :additional_informations

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true
  validates :date_of_birth, presence: true
end
