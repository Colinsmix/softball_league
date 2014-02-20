class StatLineSerializer < ActiveModel::Serializer
  attributes :id, :player_id, :game_id, :ab, :"1b", :"2b", :"3b", :hr, :bb, :hbp, :k, :sac, :rbi, :sb
end
