class PigLatinizer
  @text

  def initialize(text = nil)
    @text = text
    piglatinize(text) unless text.nil?
  end

  def piglatinize(text)
    words = text.split
    words.map do |word|
      idx = first_vowel_index(word)
      if idx == 0
        return word + "way"
      else
        return word.slice(idx..-1) + word[0...idx] + "ay"
      end
    end
    words.join(" ")
  end

  private

  def first_vowel_index (word)
    idx = 0
    word.length.times do
      break if %w(a e i o u).include?(word[idx])
      idx += 1
    end
    idx
  end
end
