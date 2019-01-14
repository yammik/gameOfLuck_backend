class PlayerSerializer < ActiveModel::Serializer
  attributes %i(id name age gender latitude longitude no_steps)
  has_many :steps
end
