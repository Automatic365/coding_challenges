class Pangram

  def self.pangram?(phrase)
    letters = []
    breakdown = phrase.downcase.chars.uniq.sort
    breakdown.each do |character|
      if is_letter?(character)
        letters.push(character)
      end
    end
    true if letters.length == 26
  end

  private

  def self.is_letter?(character)
    letters = ("a".."z").to_a
    true if letters.include?(character)
  end

end

module BookKeeping
  VERSION = 3
end
