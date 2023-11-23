module PlayersHelper

  def height_measures
    (150..220).map { |h| ["#{format('%.2f', h / 100.0)} m", h] }
  end

  def weight_measures
    (50..110).map { |w| ["#{w.round} kg", w] }
  end
  
  def format_market_value(value)
    if value >= 1_000_000
      "#{format('%.2f', value / 1_000_000.0)} M"
    elsif value >= 1_000
      "#{format('%.2f', value / 1_000.0)} K"
    else
      value.to_s
    end
  end
  
end

