require_relative 'card'
require_relative 'deck'
require_relative 'player'


class Game
  attr_reader :deck, :p1, :p2

  def initialize(player_1, player_2)
    @deck = Deck.new
    @p1 = Player.new(player_1)
    @p2 = Player.new(player_2)
  end

  def setup
    5.times do
      p1.hand << deck.stack.pop
      p2.hand << deck.stack.pop
    end

  end

  # def play
  #   until game_over?
  #     p1.take_turn
  #     p2.take_turn
  #   end
  # end

  # private
  def take_turn(player)
    p player.render_hand
    #render their hand
    p "Which cards do you want to discard? (first, second..etc) i.e. '1,2' If none, reply 'none'"
    discarded_cards = gets.chomp
    indices = parse(discarded_cards)
    discard(indices, player)
    #promt for how many new cards? => quantity
    #rerender the hand
    #promt for fold?
    #prompt them for a bet.. show their current bet
  end

  def discard(discard_indices, player)
    #discard_indices = [0, 2, 4]
    new_array = []
    player.hand.each_with_index do |card, idx|
      new_array << card if discard_indices.include?(idx)
    end
    player.hand = player.hand - new_array
    @deck.stack = new_array.concat(@deck.stack)
    #player.hand iterate => make the indices values
    #have new array
    #player.hand = org - new_array
  end

  def parse(discard_cards)
    #"1,2,3"v ["1","2","3"]
    discard_cards.split(",").map! { |value| value.to_i }
  end

end


game = Game.new("1", "2")
game.setup
game.take_turn(game.p1)
p game.p1.hand
