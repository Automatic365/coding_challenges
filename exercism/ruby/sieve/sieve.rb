class Sieve
  attr_reader :limit

  def initialize(limit)
    @limit = limit
  end

  def primes
    num_array = (2..limit).to_a
    mult_array = (2..limit).to_a
    num_array.each do |num|
      mult_array.each do |mult|
        result = num * mult
        if num_array.include?(result)
          num_array.delete(result)
        end
      end
    end
    num_array
  end

end

module BookKeeping
  VERSION = 1
end
