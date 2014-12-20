class Array
  def my_uniq
    uniqs = []
    self.each { |el| uniqs << el unless uniqs.include?(el) }
    uniqs
  end
end
