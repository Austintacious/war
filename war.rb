class War
  def initialize
    @deck = Deck.new
    @deck.shuffle!

    @player1 = Player.new('Eric')
    @player2 = Player.new('Justus')

    @player1.hand += @deck.deal_cards(26)
    @player2.hand += @deck.deal_cards(26)
  end

  def initiate_battle
    player1_card = @player1.play_card
    player2_card = @player2.play_card

    puts player1_card
    puts player2_card

    if player2_card.value > player1_card.value
      puts "Player 2 wins with a #{player2_card}"
    else
      puts "Player 1 wins with a #{player1_card}"
    end
  end
end
