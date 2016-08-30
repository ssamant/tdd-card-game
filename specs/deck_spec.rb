require_relative 'spec_helper'
require_relative '../deck'

describe Deck do
  describe "#initialize" do
    it "can create a new Deck instance" do
      Deck.new([]).must_be_instance_of(Deck)
    end

    it "should raise an error when a non-array is passed in" do
      proc{ Deck.new({}) }.must_raise(ArgumentError)
    end
  end

  describe "#shuffle" do
    it "should return a different array than it started with" do
      deck = Deck.create_standard # Kari doesn't love this, but it makes our test faster right now
      original_cards = deck.cards.clone
      deck.shuffle.wont_equal(original_cards)
    end
  end

  describe "create_standard" do
    it "will return a Deck object" do
      Deck.create_standard.must_be_instance_of(Deck)
    end

    it "will return a Deck with 52 Cards" do
      std_deck = Deck.create_standard
      std_deck.length.must_equal(52)
    end
  end
end
