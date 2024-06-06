class Player < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  belongs_to :team
  belongs_to :position
  belongs_to :country
  belongs_to :national_team, optional: true

  has_many :player_season_teams
  has_many :teams, through: :player_season_teams
  has_many :seasons, through: :player_season_teams

  before_save :check_called_to_national_team


  def self.ransackable_attributes(auth_object = nil)
    %w[name age country.name market_value] 
  end

  def self.ransackable_associations(auth_object = nil)
    ["country", "position", "team"] 
  end

  def formatted_market_value
    number_to_currency(market_value, unit: '€', locale: :pt)
  end
  
  private

  def check_called_to_national_team
    if called_to_national_team == true
      national_team = NationalTeam.find_by(country_id: country_id)
      self.national_team_id = national_team.id if national_team
    else
      self.national_team_id = nil
    end
  end

end
