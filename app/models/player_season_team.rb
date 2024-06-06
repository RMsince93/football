class PlayerSeasonTeam < ApplicationRecord
  belongs_to :season
  belongs_to :player
  belongs_to :team
end
