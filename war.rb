class War
  def initialize
    @deck = Deck.new
    @deck.shuffle!

    @player1 = Player.new('Eric')
    @player2 = Player.new('Justus')

    @player1.hand += @deck.deal_cards(26)
    @player2.hand += @deck.deal_cards(26)
  end
end
