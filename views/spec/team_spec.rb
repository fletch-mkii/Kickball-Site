require_relative "spec_helper"

RSpec.describe Team do
  let(:team) {Team.new("Simpson Slammers")}

  describe ".new" do
    it "creates a player object" do
      expect(team).to be_a(Team)
    end

    it "has a reader for the name attribute" do
      expect(team.name).to eq("Simpson Slammers")
    end

    it "has a reader for the roster attribute" do
      expect(team.roster).to eq([])
    end
  end

  describe ".all" do
    it "creates a list of team objects for all teams in the associated json file" do
      expect(Team.all).to be_a(Array)
      expect(Team.all[0]).to be_a(Team)
    end
  end
end
