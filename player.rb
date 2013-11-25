class Player
  attr_accessor :hand, :graveyard

  def initialize(name)
    @name = name
    @hand = []
    @graveyard = []
  end

  def play_card
    card = @hand.pop
    unless card
      shuffle_graveyard!
      transfer_graveyard_to_hand
      card = @hand.pop
    end
    card
  end

  def shuffle_graveyard!
    @graveyard.shuffle!
  end

  def transfer_graveyard_to_hand
    @hand += @graveyard
    @graveyard = []
  end
end
