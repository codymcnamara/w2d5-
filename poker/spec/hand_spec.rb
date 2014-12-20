require 'hand'

describe "Hand class" do

  describe "#initialize" do
    it "starts with 5 cards" do
      set_of_cards = Deck.new.take(5)
      new_hand = Hand.new(set_of_cards)

      expect(new_hand.cards.count).to eq(5)
    end
  end

  describe "#find_hand_type" do
    it "identifies a straight flush in a hand" do

      card1 = Card.new(:spades, :ace)
      card2 = Card.new(:spades, :king)
      card3 = Card.new(:spades, :queen)
      card4 = Card.new(:spades, :jack)
      card5 = Card.new(:spades, :ten)

      hand = Hand.new([card1, card2, card3, card4, card5])

      expect(hand.find_hand_type).to eq(:straight_flush)
    end

    it "identifies a four-of-a-kind" do

      card1 = Card.new(:spades, :six)
      card2 = Card.new(:hearts, :six)
      card3 = Card.new(:diamonds, :six)
      card4 = Card.new(:clubs, :six)
      card5 = Card.new(:clubs, :ace)

      hand = Hand.new([card1, card2, card3, card4, card5])

      expect(hand.find_hand_type).to eq(:four_of_a_kind)
    end

    it "identifies a full house" do

      card1 = Card.new(:spades, :six)
      card2 = Card.new(:hearts, :six)
      card3 = Card.new(:diamonds, :six)
      card4 = Card.new(:clubs, :three)
      card5 = Card.new(:hearts, :three)

      hand = Hand.new([card1, card2, card3, card4, card5])

      expect(hand.find_hand_type).to eq(:full_house)
    end

    it "identifies a flush" do
      card1 = Card.new(:hearts, :two)
      card2 = Card.new(:hearts, :king)
      card3 = Card.new(:hearts, :seven)
      card4 = Card.new(:hearts, :jack)
      card5 = Card.new(:hearts, :four)

      hand = Hand.new([card1, card2, card3, card4, card5])

      expect(hand.find_hand_type).to eq(:flush)
    end

    it "identifies a straight" do

      card1 = Card.new(:spades, :ace)
      card2 = Card.new(:spades, :king)
      card3 = Card.new(:hearts, :queen)
      card4 = Card.new(:spades, :jack)
      card5 = Card.new(:spades, :ten)

      hand = Hand.new([card1, card2, card3, card4, card5])

      expect(hand.find_hand_type).to eq(:straight)
    end

    it "identifies a three-of-a-kind" do

      card1 = Card.new(:spades, :six)
      card2 = Card.new(:hearts, :six)
      card3 = Card.new(:diamonds, :six)
      card4 = Card.new(:clubs, :three)
      card5 = Card.new(:clubs, :ace)

      hand = Hand.new([card1, card2, card3, card4, card5])

      expect(hand.find_hand_type).to eq(:three_of_a_kind)
    end

    it "identifies a two-pair" do

      card1 = Card.new(:spades, :six)
      card2 = Card.new(:hearts, :six)
      card3 = Card.new(:diamonds, :king)
      card4 = Card.new(:clubs, :king)
      card5 = Card.new(:clubs, :ace)

      hand = Hand.new([card1, card2, card3, card4, card5])

      expect(hand.find_hand_type).to eq(:two_pair)
    end

    it "identifies a one-pair" do

      card1 = Card.new(:spades, :six)
      card2 = Card.new(:hearts, :six)
      card3 = Card.new(:diamonds, :king)
      card4 = Card.new(:clubs, :three)
      card5 = Card.new(:clubs, :ace)

      hand = Hand.new([card1, card2, card3, card4, card5])

      expect(hand.find_hand_type).to eq(:one_pair)
    end

    it "identifies a high-card" do

      card1 = Card.new(:spades, :six)
      card2 = Card.new(:hearts, :ten)
      card3 = Card.new(:diamonds, :king)
      card4 = Card.new(:clubs, :three)
      card5 = Card.new(:clubs, :ace)

      hand = Hand.new([card1, card2, card3, card4, card5])

      expect(hand.find_hand_type).to eq(:high_card)
    end

  end



end
