require_relative 'spec_helper'
require_relative '../card' #navigates up one in the directory tree


describe Card do
  before do
    @card = Card.new(:hearts, 11)

  end

  describe "Checking Card Value" do
    it "has value of 11" do
      @card.value.must_equal 11
    end

    it "has suit hearts" do
      @card.suit.must_equal :hearts

    end

  end
end
