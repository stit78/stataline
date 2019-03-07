class Country < ApplicationRecord
  belongs_to :continent
  has_many :elements
end
