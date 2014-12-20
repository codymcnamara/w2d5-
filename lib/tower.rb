require 'byebug'

class Tower
  attr_accessor :towers

  def initialize
    @towers = Array.new(3) { Array.new }
    @towers[0] = [3, 2, 1]
  end

  def move(start_tower, end_tower)
    unless start_tower.between?(0, 2) && end_tower.between?(0, 2)
      raise "That's not a valid move!"
    end

    unless towers[end_tower].empty?
      if towers[start_tower].last > towers[end_tower].last
        raise "Can't put larger disk on top of smaller disk"
      end
    end

    disk = towers[start_tower].pop
    towers[end_tower] << disk
    true
  end

  def play
    until won?
      start_prompt = "Enter tower from which to move: "
      start_tower = get_input(start_prompt)
      end_prompt = "Enter tower to move disk to:"
      end_tower = get_input(end_prompt)

      move(start_tower, end_tower)
    end
    puts "You won!"
  end

  def get_input(message = "")
    puts message
    input = gets.chomp

    if ["1","2","3"].include?(input)
      return input.to_i
    else
      error_message = "that's not a valid number. #{message}"
      get_input(error_message)
    end

    false
  end

  def won?
    towers[2] == [3, 2, 1]
  end


end
