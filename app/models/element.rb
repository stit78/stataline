class Element < ApplicationRecord
  belongs_to :country
  belongs_to :indicator
  belongs_to :year
  belongs_to :unit
end
