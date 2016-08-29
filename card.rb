class Card
  attr_reader :suit, :value

  SUITS = [
    :hearts,
    :diamonds,
    :clubs,
    :spades
  ]

  VALUES = (2..10).to_a

  def initialize(suit, val)
    if !SUITS.include?(suit)
      raise ArgumentError.new("Invalid suit")
    end

    if !VALUES.include?(val)
      raise ArgumentError.new("Invalid value")
    end

    @suit = suit
    @value = val
  end
end
