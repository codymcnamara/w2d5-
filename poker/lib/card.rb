class Card

  attr_reader :value, :suit

  SUITS = {
    :spades => "♠",
    :hearts => "♥",
    :diamonds => "♦",
    :clubs => "♣"
  }

  NUMBER_VALUES = {
    :two => 2,
    :three => 3,
    :four => 4,
    :five => 5,
    :six => 6,
    :seven => 7,
    :eight => 8,
    :nine => 9,
    :ten => 10,
    :jack => 11,
    :queen => 12,
    :king => 13,
    :ace => 14
  }

  VALUES = {
    :two => "2",
    :three => "3",
    :four => "4",
    :five => "5",
    :six => "6",
    :seven => "7",
    :eight => "8",
    :nine => "9",
    :ten => "10",
    :jack => "J",
    :queen => "Q",
    :king => "K",
    :ace => "A"
  }


  def initialize(suit, value)
    @suit, @value = suit, value
  end

  def self.suits
    SUITS.keys
  end

  def self.values
    VALUES.keys
  end

  def number_value
    NUMBER_VALUES[self.value]
  end

  def to_s
    VALUES[value] + SUITS[suit] 
  end

end
