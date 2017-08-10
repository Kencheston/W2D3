require 'player'

describe "Player" do
  subject(:player) { Player.new("Alison") }
  describe "#initialize" do
    it "takes in a player's name" do
      expect(player.name).to eq("Alison")
    end
    it "pot initializes to zero" do
      expect(player.pot).to eq(0)
    end
    it "initializes a new hand" do
      expect(player.hand).to be_empty
    end
  end
end
