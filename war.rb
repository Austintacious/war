class War
  def initialize
    @deck = Deck.new
    @deck.shuffle!

    @player1 = Player.new('Eric')
    @player2 = Player.new('Justus')

    @player1.hand += @deck.deal_cards(26)
    @player2.hand += @deck.deal_cards(26)

    @game_over = false
  end

  def initiate_battle
    player1_card = @player1.play_card
    player2_card = @player2.play_card

    if player1_card && player2_card
      judge_war(player1_card, player2_card)
    else
      @game_over = true
    end
  end

  def judge_war(card1, card2)
    puts card1
    puts card2

    if card2.value > card1.value
      puts "Player 2 wins with a #{card2}"
      @player2.graveyard << card1
    else
      puts "Player 1 wins with a #{card1}"
      @player1.graveyard << card2
    end
  end

  def game_over?
    @game_over
  end
end
