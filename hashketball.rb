require "pry"

def game_hash
  {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black","White"],
      :players => {
        "Alan Anderson" => {number: 0, shoe: 16, points: 22, rebounds: 12, assists: 12, steals: 3, blocks: 1, slam_dunks: 1},
        "Reggie Evans" => {number: 30, shoe: 14, points: 12, rebounds: 12, assists: 12, steals: 12, blocks: 12, slam_dunks: 7},
        "Brook Lopez" => {number: 11, shoe: 17, points: 17, rebounds: 19, assists: 10, steals: 3, blocks: 1, slam_dunks: 15},
        "Mason Plumlee" => {number: 1, shoe: 19, points: 26, rebounds: 12, assists: 6, steals: 3, blocks: 8, slam_dunks: 5},
        "Jason Terry" => {number: 31, shoe: 15, points: 19, rebounds: 2, assists: 2, steals: 4, blocks: 11, slam_dunks: 1}
      }
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {number: 4, shoe: 18, points: 10, rebounds: 1, assists: 1, steals: 2, blocks: 7, slam_dunks: 2},
        "Bismak Biyombo" => {number: 0, shoe: 16, points: 12, rebounds: 4, assists: 7, steals: 7, blocks: 15, slam_dunks: 10},
        "DeSagna Diop" => {number: 2, shoe: 14, points: 24, rebounds: 12, assists: 12, steals: 4, blocks: 5, slam_dunks: 5},
        "Ben Gordon" => {number: 8, shoe: 15, points: 33, rebounds: 3, assists: 2, steals: 1, blocks: 1, slam_dunks: 0},
        "Brendan Haywood" => {number: 33, shoe: 15, points: 6, rebounds: 12, assists: 12, steals: 22, blocks: 5, slam_dunks: 12}
      }
    }
  }
end

def num_points_scored(name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |player_name, data|
      if name == player_name then
        return data[:points]
      end
    end
  end
end

def shoe_size(name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |player_name, data|
      if name == player_name then
        return data[:shoe]
      end
    end
  end
end

def team_colors(name)
  game_hash.each do |location, team_data|
    if name == team_data[:team_name] then
      return team_data[:colors]
    end
  end
end

def player_stats(name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |player_name,data|
      if name == player_name then
        return data
      end
    end
  end
end

def player_numbers(name) #that takes in an argument of a team name and returns an array of the jersey number's for that team
  game_hash.each do |location, team_data|
    if name == team_data[:team_name] then
      return team_data[:players].collect do |player_name, player_data|
        player_data[:number]
      end
    end
  end
end


def big_shoe_rebounds() #return the number of rebounds associated with the player that has the largest shoe size.
  game_hash[:home][:players].each do |name, player_hash|
    if name == "Mason Plumlee"
      return player_hash[:rebounds]
    end
  end
end


def team_names() #that operates on the game hash to return an array of the team names.
 game_hash.collect do |key, value|
  value[:team_name]
 end
end
