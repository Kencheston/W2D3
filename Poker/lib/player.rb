

class Player
  attr_reader :name
  attr_accessor :pot, :hand

  def initialize(name)
    @name = name
    @pot = 0
    @hand = []
  end

  def render_hand
    array = []
    @hand.each do |card|
      array << card.to_s
    end
    array
  end

end
