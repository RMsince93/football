teams_data = [
  "SL Benfica",
  "Sporting CP",
  "SC Braga",
  "Vitória SC",
  "Boavista FC",
  "FC Famalicão",
  "Moreirense FC",
  "Gil Vicente FC",
  "Casa Pia AC",
  "Estrela Amadora",
  "Portimonense",
  "SC Farense",
  "GD Chaves",
  "FC Vizela",
  "FC Arouca",
  "Rio Ave FC",
  "Estoril Praia"
]

teams_data.each do |team_name|
    team = Team.find_by(name: team_name)
  
    if team.present?
      team_avatar_filename = team.name.downcase.gsub(' ', '') + ".png"
      team_avatar_path = Rails.root.join("../football_faces", team_avatar_filename)
  
      unless File.exist?(team_avatar_path)
        puts "File not found: #{team_avatar_path} for #{team.name}"
        next
      end
  
      team.avatar = File.open(team_avatar_path)
  
      if team.save
        puts "Avatar added to #{team.name}"
      else
        puts "Error adding avatar to #{team.name}: #{team.errors.full_messages.join(', ')}"
      end
    else
      puts "Team not found: #{team_name}"
    end
  end
  
  puts "Seeding completed successfully!"