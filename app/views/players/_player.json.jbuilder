json.extract! player, :id, :name, :age, :nationality, :shirt_number, :market_value, :position, :secondary_positions, :height, :weight, :preferred_foot, :goals, :assists, :yellow_cards, :red_cards, :goals_suffered, :clean_sheets, :created_at, :updated_at
json.url player_url(player, format: :json)
