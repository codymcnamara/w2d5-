require 'my_uniq'

describe "#my_uniq" do

  it "returns the unique elements in the order in which they first appeared" do
    array = [1, 2, 1, 3, 3]

    expect(array.my_uniq).to eq([1, 2, 3])
  end

end
