require 'game'
require 'player'


describe "Game" do
  subject(:game) { Game.new("Alison", "Ken") }
  describe "#initialize" do
    it "creates a new deck" do
      expect(game.deck).to be_truthy
    end
    it "creates two new players" do
      expect(game.p1).to be_an_instance_of(Player)
      expect(game.p2).to be_an_instance_of(Player)
    end
  end

  describe "#setup" do
    before(:each) do
      game.setup
    end
    it "fills the hand with five cards" do

      expect(game.p1.hand.length).to eq(5)
      expect(game.p2.hand.length).to eq(5)
    end
    it "pops cards off the stack of deck" do
      expect(game.deck.stack.length).to eq(42)
    end
    
  end


end
