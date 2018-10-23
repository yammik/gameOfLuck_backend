class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :gender, :latitude, :no_steps, :alive
  has_many :steps
end
