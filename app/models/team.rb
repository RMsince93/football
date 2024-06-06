class Team < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
	
  has_many :seasons, through: :player_season_teams
  has_many :player_season_teams
  has_and_belongs_to_many :championships

  belongs_to :country
  belongs_to :season
	
  has_one :coach
  has_many :players, through: :player_season_teams, dependent: :destroy

  def self.ransackable_attributes(auth_object = nil)
	["id", "name", "stadium", "stadium_capacity", "trophies", "country_id",  "created_at", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
	["championships", "country", "players"]
  end
end
