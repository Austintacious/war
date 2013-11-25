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
        cards.push(value + suit)
      end
    end

    cards
  end

  def shuffle!
    @cards.shuffle!
  end

  def cards
    @cards
  end
end
