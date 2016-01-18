require 'sinatra'

set :public_folder, File.join(File.dirname(__FILE__), "public")

get "/teams" do
  @teams = Team.all
  erb :teams
end

get "/teams/:team_name" do
  @players = []
  Player.all.each do |player|
    if player.team_name == params[:team_name]
      @players << player
    end
    @players
  erb :players
end

get "/positions" do
  @positions = JSON_DATA.values.first.keys
  erb :positions
end

get "/positions/:position_name" do
  @position_name = params[:position_name]
  erb :players_pos
end
