
def stock_picker(prices)
  max_gain = 0
  buy_sell_pair = []
  prices.each_with_index do |buy_price, i|
    prices.each_with_index do |sell_price, j|
      if i < j && max_gain < sell_price - buy_price
        max_gain = sell_price - buy_price
        buy_sell_pair = [i, j]
      end
    end
  end
  buy_sell_pair
end
