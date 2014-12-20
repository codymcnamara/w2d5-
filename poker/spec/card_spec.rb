require "card"

describe "Card class" do

  describe "#initialize" do
    subject(:card) {Card.new(:spades, :ace)}


    it "assigns a suit" do
      expect(card.suit).to eq(:spades)
    end

    it "assigns a value" do
      expect(card.value).to eq(:ace)
    end

  describe "::suits" do
    it "returns an array of suits" do
      expect(Card.suits).to include(:spades, :hearts, :diamonds, :clubs)
    end
  end

  describe "::values" do
    it "returns an array of card values" do
      expect(Card.values).to include(:two, :three, :four, :five, :six, :seven,
                              :eight, :nine, :ten, :jack, :queen, :king, :ace)
    end
  end

  describe "#number_value" do
    it "returns the number value of a card" do
      ace = Card.new(:spades, :ace)

      expect(ace.number_value).to eq(14)
    end
  end

  describe "#to_s" do
    it "returns the string representation of a card" do
      ace = Card.new(:spades, :ace)

      expect(ace.to_s).to eq("A♠")
    end
  end


  end


end
