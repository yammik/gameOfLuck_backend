class Player < ApplicationRecord
  has_many :steps
  has_many :countries, through: :steps
end
