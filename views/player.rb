class Player
  attr_reader :position, :name, :team_name
  def initialize(name, position, team_name)
    @position = position
    @name = name
    @team_name = team_name
  end

  def self.all
    @players = []
    JSON_HASH.each do |team, players|
      players.each do |position, player|
        @players << Player.new(player, position, team)
      end
    end
    @players
  end
end
