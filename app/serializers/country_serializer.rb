class CountrySerializer < ActiveModel::Serializer
  attributes %i(name development mortality_distribution)
  has_many :steps
end
