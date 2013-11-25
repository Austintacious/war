class Card
  attr_reader :value

  VALUES_MAP = {
    "J" => 11,
    "Q" => 12,
    "K" => 13,
    "A" => 14,
  }

  def initialize(symbol, suit)
    @symbol = symbol
    @value = value_for(symbol)
    @suit = suit
  end

  def to_s
    "#{@symbol}#{@suit}"
  end

  def value_for(symbol)
    value = 0
    if ("2".."10").to_a.include?(symbol)
      value = symbol.to_i
    else
      value = VALUES_MAP[symbol]
    end
    value
  end
end
