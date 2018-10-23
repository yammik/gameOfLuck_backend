class StepSerializer < ActiveModel::Serializer
  attributes %i(id step_count player_id country_id)
end
