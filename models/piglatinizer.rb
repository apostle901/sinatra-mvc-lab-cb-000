class PigLatinizer
  @text

  def initialize(text = nil)
    @text = text
    piglatinize(text) unless text.nil?
  end

  def piglatinize(text)
    words = text.split
    words.map do |word|
      if %w(a e i o u).include?(word[0].downcase)
        return word + "way"
      else
        return word.slice(1..-1) + word[0] + "ay"
      end
    end
    words.join(" ")
  end
end
