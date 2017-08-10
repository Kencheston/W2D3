require 'deck'

describe 'Deck' do
  subject(:deck) {Deck.new}
  describe '#initialize' do
    it "has a deck of 52" do
      expect(deck.stack.length).to eq(52)
    end
    it "expects all card to have values" do
      expect(deck.stack.all? { |card| card.value }).to be_truthy
    end
  end

  describe '#shuffle' do
    let(:deck2) { Deck.new }
    it "shuffles the deck" do
      deck.shuffle!
      expect(deck.stack).not_to eql(deck2.stack)
    end
  end


end
