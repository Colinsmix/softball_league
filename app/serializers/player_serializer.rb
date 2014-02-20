class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :position, :firstname, :lastname, :team_id
end
