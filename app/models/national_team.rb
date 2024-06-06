class NationalTeam < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
    
  has_many :players
  has_one :coach

  belongs_to :country


  def self.ransackable_attributes(auth_object = nil)
    ["avatar", "country_id", "created_at", "id", "name", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["country", "players"]
  end
  
end
