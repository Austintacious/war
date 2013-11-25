class Player
  attr_accessor :hand

  def initialize(name)
    @name = name
    @hand = []
  end

  def play_card
    @hand.pop
  end
end
