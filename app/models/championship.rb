class Championship < ApplicationRecord
    has_and_belongs_to_many :teams
  
    belongs_to :country, optional: true
    belongs_to :continent, optional: true

    def self.ransackable_attributes(auth_object = nil)
      ["name", "country"]
    end
    
    def self.ransackable_associations(auth_object = nil)
      ["country", "team", "continent"]
    end
    
end
  