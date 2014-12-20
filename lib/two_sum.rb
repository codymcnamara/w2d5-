class Array
  def two_sum
    two_sums = []
    each_with_index do |el, i|
      each_with_index do |other_el, j|
        two_sums << [i, j] if j > i && el + other_el == 0
      end
    end

    two_sums
    
  end

end
