module Game
  class Card
    SUITS = [:heart, :diamond, :spade, :club]
    attr_accessor :suit, :value

    def initialize(suit, value)
      validations(suit, value)

      @suit = suit
      @value = value
    end

    def validations(suit, value)
      validate_suit(suit)
      validate_value(value)
    end

    def validate_suit(suit)
      if !SUITS.include?(suit)
        raise ArgumentError.new("Invalid Suit")
      end
    end

    def validate_value(val)
      if val.is_a?(Fixnum)
        raise ArgumentError.new("Invalid numeric value") if !(0..10).to_a.include?(val)
      elsif val.is_a?(String)
        val.upcase!
        raise ArgumentError.new("Invalid string value") if !(%w(J Q K A).include?(val))
      else
        raise ArgumentError.new("Invalid value")
      end
    end
  end
end
