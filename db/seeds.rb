

def create_season(name)
  Season.create(name: name)
end

def create_seasons(start_year, end_year)
  (start_year..end_year).map do |year|
    create_season("#{year}/#{year + 1}")
  end
end

start_year = 2017
end_year = 2023
create_seasons(start_year, end_year)
