class Translator
  attr_reader :alphabet,
              :night_writer,
              :night_reader

  def initialize
    @alphabet = Alphabet.new
  end

  def translate_to_braille(input)
    braille_array = []
    input.chars.find_all do |character|
      braille_array << @alphabet.find_letter_value(character)
    end
    array = braille_array.compact.transpose
    array.map { | row | row.join(' ')}.join("\n")
  end

  def translate_to_english(input)
    input_string = input.split("\n")
    input_array = input_string.map do |input|
      input.scan(/../)
    end
    braille_arrays = input_array.transpose
    braille_arrays.find_all.map do |characters|
      @alphabet.find_braille_value(characters)
    end.join

    # results = []
    # letters = input.split("\n")
    # letters.map do |letter|
    #   letter.delete(" ")
    #   results << @alphabet.find_braille_value(letters)
    # end
    # results.uniq.join
  end
end
