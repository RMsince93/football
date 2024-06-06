class Country < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  belongs_to :continent
  has_many :teams
  has_many :championships
  
  has_one :national_team

  def self.ransackable_attributes(auth_object = nil)
      ["continent_id", "created_at", "id", "name", "updated_at"]
  end
end
