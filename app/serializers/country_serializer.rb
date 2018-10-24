class CountrySerializer < ActiveModel::Serializer
  attributes %i(name development mortality_distribution bounds)
  has_many :steps
end
