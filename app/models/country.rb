class Country < ApplicationRecord
  belongs_to :continent 

  def self.ransackable_attributes(auth_object = nil)
      ["continent_id", "created_at", "id", "name", "updated_at"]
  end
end
