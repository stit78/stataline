class Indicator < ApplicationRecord
  belongs_to :subtopic
  belongs_to :source
  has_many :elements
end
