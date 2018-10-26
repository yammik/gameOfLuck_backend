class Country < ApplicationRecord
  has_many :steps
  has_many :players, through: :steps

  serialize :mortality_distribution
  serialize :bounds
end
