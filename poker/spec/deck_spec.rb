require 'deck'

describe "Deck class" do

  describe "#initialize" do
    it "creates a deck of 52 cards" do
      new_deck = Deck.new

      expect(new_deck.cards.count).to eq(52)
    end
  end

  describe "#shuffle" do
    it "shuffles the existing deck to a random state" do
      deck = Deck.new
      shuffled_deck = deck.shuffle

      expect(deck).not_to eq(shuffled_deck)
    end
  end

  describe "#take(n)" do
    it "takes n cards from the deck" do
      deck = Deck.new
      set_of_cards = deck.take(5)

      expect(set_of_cards.count).to eq(5)
    end

    it "removes those n cards from the deck" do
      deck = Deck.new
      set_of_cards = deck.take(5)

      expect(deck.cards.count).to eq(47)
    end

  end


end
