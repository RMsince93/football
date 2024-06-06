class Season < ApplicationRecord
    has_many :player_season_teams
    has_many :players, through: :player_season_teams
    has_many :teams, through: :player_season_teams
end
