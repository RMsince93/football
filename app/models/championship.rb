class Championship < ApplicationRecord
    has_and_belongs_to_many :teams
  
    belongs_to :country, optional: true
    belongs_to :continent, optional: true

    #validates :name, presence: true

    scope :champ_search, ->(query) { where("name LIKE ? OR country LIKE ?", "%#{query}%", "%#{query}%") }
    
end
  