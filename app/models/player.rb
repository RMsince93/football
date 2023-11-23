class Player < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  belongs_to :team
  belongs_to :position
  belongs_to :country


  def self.ransackable_attributes(auth_object = nil)
    %w[name age country.name market_value] 
  end

  def self.ransackable_associations(auth_object = nil)
    ["country", "position", "team"] 
  end

  def formatted_market_value
    number_to_currency(market_value, unit: '€', locale: :pt)
  end

end
