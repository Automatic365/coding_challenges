class Squares
  attr_reader :num

  def initialize(num)
    @num = (0..num).to_a
  end

  def square_of_sum(number = num)
    num.reduce(:+)**2
  end

  def sum_of_squares(number = num)
    num.map {|number| number ** 2}.reduce(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end

end

module BookKeeping
  VERSION = 3
end
