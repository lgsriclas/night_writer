class Translator
  attr_reader :alphabet,
              :night_writer

  def initialize
    @alphabet = Alphabet.new
    # @night_writer = NightWriter.new
  end

  def translate_to_braille(input)
    letter_array = []
    input.chars.find_all do |character|
      if character != '\n'
        letter_array << @alphabet.find_value(character)
      end
    end
    x = letter_array.compact.transpose
    x.map { | row | row.join(' ')}.join("\n")
  end

  def translate_to_english(input)
    braille_array = []
    input.find_all do |character|
      if character != '\n'
        braille_array << @alphabet.find_key(character)
      end
    end
  end
end
