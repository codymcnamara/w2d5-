require 'card'

class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    populate
  end

  def populate
    Card.suits.each do |suit|
      Card.values.each do |value|
        cards << Card.new(suit, value)
      end
    end
    nil
  end

  def shuffle!
    cards = cards.shuffle
  end

  def shuffle
    cards.shuffle
  end


  def take(n)
    cards.shift(n)
  end

end
