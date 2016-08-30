require_relative 'spec_helper'
require_relative '../card'

describe Card do
  describe "#initialize" do
    let(:card) { Card.new(:hearts, 2) }

    it "should throw an error when a invalid suit is supplied" do
      proc { Card.new("suit", 2) }.must_raise(ArgumentError)
    end

    bad_values = [1, 11, 0, "p", "1", "2"]
    bad_values.each do |val|
      it "should throw an error when a invalid value: #{ val } of type #{ val.class } is supplied" do
        proc { Card.new(:spades, val) }.must_raise(ArgumentError)
      end
    end

    it "should be in the valid list of suits" do
      Card::SUITS.must_include(card.suit)
    end

    it "can create a new instance of Card" do
      card.must_be_instance_of(Card)
    end

    it "should have a suit property" do
      card.must_respond_to(:suit)
    end

    it "should have a value property" do
      card.must_respond_to(:value)
    end

    it "suit should have the same value that we set" do
      card.suit.must_equal(:hearts)
    end

    it "value should have the same value that we set" do
      card.value.must_equal(2)
    end
  end

  describe "#print" do
    let(:other_card) { Card.new(:hearts, 2) }
    it "something to do with printing" do
      skip
      c = Card.new()
      c.print.must_be_instance_of(String)
    end
  end
end
