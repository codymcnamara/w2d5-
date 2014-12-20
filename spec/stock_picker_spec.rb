require 'stock_picker'

describe "#stock_picker" do

  it "outputs the most profitable pair of days to buy and sell" do
    prices = [10, 15, 5, 3, 8, 12, 20, 16, 13]

    expect(stock_picker(prices)).to eq([3, 6])
  end
end
