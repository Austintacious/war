class Deck
  SUITS = ['♠', '♣', '♥', '♦']
  VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

  def initialize
    @cards = generate_cards
  end

  def generate_cards
    cards = []

    SUITS.each do |suit|
      VALUES.each do |value|
        card = Card.new(value, suit)
        cards.push(card)
      end
    end

    cards
  end

  def shuffle!
    @cards.shuffle!
  end

  def deal_card
    @cards.pop
  end

  def deal_cards(count=1)
    cards = []
    count.times do 
      cards << deal_card
    end
    cards
  end
end
