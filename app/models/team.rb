class Team < ApplicationRecord
	mount_uploader :avatar, AvatarUploader
	
	has_many :players, dependent: :destroy
	has_and_belongs_to_many :championships

	belongs_to :country

	def self.ransackable_attributes(auth_object = nil)
			["id", "name", "stadium", "stadium_capacity", "trophies", "country_id",  "created_at", "updated_at"]
	end

	def self.ransackable_associations(auth_object = nil)
			["championships", "country", "players"]
	end
end
