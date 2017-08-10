require 'card'

describe "Card" do

  describe "#initialize" do
    subject(:card) { Card.new }

    it "card has a value" do
      expect(card.value).to eq(nil)
    end

  end
end
