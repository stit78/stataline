class Element < ApplicationRecord
  belongs_to :country
  belongs_to :indicator
  belongs_to :unit

  def hello
    return true
  end
end
