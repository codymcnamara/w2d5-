require 'deck'
require 'card'

class Hand
  attr_accessor :cards

  def initialize(cards)
    @cards = cards
  end

  def find_hand_type
    return :straight_flush if straight_flush?
    return :four_of_a_kind if four_of_a_kind?
    return :full_house if full_house?
    return :flush if flush?
    return :straight if straight?
    return :three_of_a_kind if three_of_a_kind?
    return :two_pair if two_pair?
    return :one_pair if one_pair?
    :high_card
  end

  def straight_flush?
    straight? && flush?
  end

  def four_of_a_kind?
    values = cards.map { |card| card.value }
    values.any? { |value| values.count(value) == 4 }
  end

  def full_house?
    combos = 0
    values = cards.map { |card| card.value }
    values.each do |value|
      combos += 1 if values.count(value) == 3
      combos += 1 if values.count(value) == 2
    end

    combos == 5
  end

  def flush?
    suits = cards.map { |card| card.suit }
    suits.uniq.count == 1
  end

  def straight?
    values_arr = @cards.map {|card| card.number_value}
    sum = 0
    values_arr.each { |value|  sum += value - values_arr.min}
    sum == 10
  end

  def three_of_a_kind?
    values = cards.map { |card| card.value }
    values.any? { |value| values.count(value) == 3 }
  end

  def two_pair?
    combos = 0
    values = cards.map { |card| card.value }
    values.each do |value|
      combos += 1 if values.count(value) == 2
    end

    combos == 4
  end

  def one_pair?
    values = cards.map { |card| card.value }
    values.any? { |value| values.count(value) == 2 }
  end

end
