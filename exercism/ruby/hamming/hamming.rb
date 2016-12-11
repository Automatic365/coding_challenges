class Hamming

  def self.compute(strand1, strand2)
    length_check(strand1, strand2)
    comps = strand1.chars.zip(strand2.chars)
    distance = []
    comparison_check(comps, distance)
  end

  def self.length_check(strand1, strand2)
    if strand1.length != strand2.length
      raise ArgumentError.new("Strands must be equal length")
    end
  end

  def self.comparison_check(comps, array)
    if comps.empty?
      array<<0
    else
      comps.each do |comp|
        if comp.first == comp.last
          array << 0
        else
          array << 1
        end
      end
    end
    array.reduce(:+)
  end

end
