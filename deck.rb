require_relative 'card'

module Game
  class Deck
    attr_accessor :cards

    def initialize(cards = [])
      @cards = cards
    end

    def shuffle!
      @cards.shuffle!
    end

    def deal(players, cards)
      deal = []
      players.times do
        player_hand = []
        cards.times do
          break if @cards.length <= 0
          player_hand << @cards.pop
        end
        deal << player_hand
      end

      return deal
    end

    def self.create_standard
      deck_list = []
      Game::Card::SUITS.each do |suit|
        (2..10).each do |i|
          deck_list << Game::Card.new(suit, i)
        end
        %w(J Q K A).each do |face|
          deck_list << Game::Card.new(suit, face)
        end
      end

      return deck_list
    end
  end
end
