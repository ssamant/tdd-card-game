require_relative 'card'

class Deck
  attr_reader :cards
  
  def initialize(cards)
    raise ArgumentError.new("Invalid input type") if !cards.is_a?(Array)
    @cards = cards
  end

  def length
    @cards.length
  end

  def shuffle
    @cards.shuffle!
  end

  def self.create_standard
    cards = []

    Card::SUITS.each do |suit|
      Card::VALUES.each do |val|
        cards << Card.new(suit, val)
      end
    end

    self.new(cards)
  end
end
