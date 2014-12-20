require 'two_sum'

describe "#two_sum" do
  subject(:array) { [-1, 0, 2, -2, 1] }

  it "finds a pair of positions where the elements sum to zero" do
    expect(array.two_sum).to include([0, 4])
  end

  it "finds all the pair positions" do
    expect(array.two_sum).to include([0, 4])
    expect(array.two_sum).to include([2, 3])
  end

  it "puts all the pairs in correct order" do
    expect(array.two_sum).to eq([[0, 4], [2, 3]])
  end

end
