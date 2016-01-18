require_relative "spec_helper"

RSpec.describe Player do
  let(:player) {Player.new("Homer Simpson","Catcher","Simpson Slammers")}

  describe ".new" do
    it "creates a player object" do
      expect(player).to be_a(Player)
    end

    it "has a reader for the name attribute" do
      expect(player.name).to eq("Homer Simpson")
    end

    it "has a reader for the position attribute" do
      expect(player.position).to eq("Catcher")
    end

    it "has a reader for the team_name attribute" do
      expect(player.team_name).to eq("Simpson Slammers")
    end
  end

  describe ".all" do
    it "creates a list player objects for all players in the associated json file" do
      expect(Player.all).to be_a(Array)
      expect(Player.all[0]).to be_a(Player)
    end
  end
end
