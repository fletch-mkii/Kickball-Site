class Team
  attr_reader :name, :roster
  def initialize(name)
    @name = name
    @roster = []
  end

  def players
    players = []
    Player.all.each do |player|
      if player.team_name == @name
        players << player
      end
    end
    players
  end

  def self.all
    @teams = []
    JSON_HASH.keys.each do |team|
      @teams << Team.new(team)
    end
    @teams
  end
end
