require_relative 'spec_helper'
require_relative '../card' #navigates up one in the directory tree


describe Card do
  before do
    @card = Card.new(:hearts, 11)

  end

  describe "Checking Card Value" do

  end
end
