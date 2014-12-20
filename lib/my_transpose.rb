def my_transpose(arr)
  transposed = Array.new(arr.length) { Array.new(arr.length) }
  (0...arr.length).each do |i|
    (0...arr.length).each do |j|
      transposed[i][j] = arr[j][i]
    end
  end

  transposed
end
