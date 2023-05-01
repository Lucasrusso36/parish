class Faithful < ApplicationRecord
  belongs_to :community
  #belongs_to :sexual_orientation
  belongs_to :relationship
  has_one :address

  has_many :additional_informations

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :birthdate, presence: true

  enum sexual_orientation: { male: 0, female: 1}

  # def test 
  #   Faithful.where(children: true).count
  # end

  rails_admin do

    field :community
    field :relationship
    field :additional_informations
    field :address
    
    field :sexual_orientation, :enum do
      searchable false

      enum do
        Faithful.sexual_orientations.map { |k,_| [k.titleize, k] }
      end

      pretty_value do
        if bindings[:object]
          bindings[:object].send(:sexual_orientation).titleize
        end
      end

      def form_value
        bindings[:object].sexual_orientation
      end
    end

  end
end
