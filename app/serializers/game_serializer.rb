class GameSerializer < ActiveModel::Serializer
  attributes :id, :hteam_score, :ateam_score, :hteam_id, :ateam_id
end
