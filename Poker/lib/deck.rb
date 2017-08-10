require_relative 'card'
require_relative 'player'

class Deck
  attr_accessor :stack

  def initialize
    @stack = []
    (2..14).to_a.each do |el|
      4.times do |value|
        @stack << Card.new(el)
      end
    end
    shuffle!
  end

  def shuffle!
    @stack.shuffle!
  end

end
