class Coach < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  
  belongs_to :country
  belongs_to :team, optional: true
  belongs_to :natinal_team, optional: true

  validates :name, :age, presence: true


  def self.ransackable_attributes(auth_object = nil)
    ["age", "avatar", "country_id", "created_at", "id", "name", "team_id", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["country", "team"]
  end
  
end
