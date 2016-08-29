require_relative 'spec_helper'
require_relative '../card'

describe Game::Card do
  describe "#initialize" do
    let(:card) { Game::Card.new(:heart, 3) }

    it "can create a new Card instance" do
      card.must_be_instance_of(Game::Card)
    end

    it "should have suit property" do
      card.must_respond_to(:suit)
    end

    it "should have value property" do
      card.must_respond_to(:value)
    end

    it "should throw an error if the suit is not valid" do
      proc { Game::Card.new(:bad, 3) }.must_raise(ArgumentError)
    end

    it "should throw an error if the numeric value is not valid" do
      proc { Game::Card.new(:heart, -1) }.must_raise(ArgumentError)
    end

    it "should throw an error if the string value is not valid" do
      proc { Game::Card.new(:heart, "b") }.must_raise(ArgumentError)
    end
  end
end
