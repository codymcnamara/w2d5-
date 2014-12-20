require "tower"

describe Tower do

  subject(:game) { Tower.new }

  describe "#initialize" do

    it "has 3 towers" do
      expect(game.towers.count).to eq(3)
    end

    it "starts with 3 disks in the right order on tower 1" do
      expect(game.towers[0]).to eq([3, 2, 1])
    end

  end

  describe "#move" do

    it "moves a disk to an empty tower" do
      game.move(0, 1)

      expect(game.towers[1]).to eq([1])
    end

    it "moves a disk on top of a larger disk" do
      game.move(0, 1)
      game.move(0, 2)
      game.move(1, 2)

      expect(game.towers[2]).to eq([2, 1])
    end

    it "raises an exception if trying to move larger disk on top of smaller disk" do
      expect do
        game.move(0, 2)
        game.move(0, 2)
      end.to raise_error("Can't put larger disk on top of smaller disk")
    end

    it "raises an exception if moving outside of game board" do
      expect { game.move(0, 3) }.to raise_error("That's not a valid move!")
    end

  end

  describe "#won?" do

    it "accurately describes a winning game state" do
      game.move(0, 2)
      game.move(0, 1)
      game.move(2, 1)
      game.move(0, 2)
      game.move(1, 0)
      game.move(1, 2)
      game.move(0, 2)

      expect(game.won?).to eq(true)
    end

  end


end
