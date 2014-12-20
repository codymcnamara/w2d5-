require 'my_transpose'

describe "#my_transpose" do
  it "should transpose the array" do
    rows = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8]
      ]

    cols = [[0, 3, 6],
       [1, 4, 7],
       [2, 5, 8]]

    expect(my_transpose(rows)).to eq(cols)
  end
end
