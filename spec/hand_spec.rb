require 'hand'

describe "Hand class" do

  describe "#initialize" do
    it "starts with 5 cards" do
      new_hand = Hand.new(Deck.new)

      expect(new_hand.cards.count).to eq(5)
    end
  end



end
