class Card
  attr_accessor :value


  def initialize(value = nil)
    @value = value
  end

  def to_s
    @value.to_s
  end
end
