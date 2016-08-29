require_relative 'spec_helper'
require_relative '../deck'

describe Game::Deck do
  describe "#initialize" do
    it "can create a new Deck instance" do
      Game::Deck.new.must_be_instance_of(Game::Deck)
    end
  end

  describe "#create_standard" do
    it "returns an array" do
      Game::Deck.create_standard.must_be_kind_of(Array)
    end

    it "creates the 52 card deck" do
      Game::Deck.create_standard.length.must_equal(52)
    end
  end
end
