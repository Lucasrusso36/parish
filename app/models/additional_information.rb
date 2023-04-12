class AdditionalInformation < ApplicationRecord
  belongs_to :faithful

  validates :information, presence: true
end
