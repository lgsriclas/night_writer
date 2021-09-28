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
    x = braille_array.compact.transpose
    x.map { | row | row.join(' ')}.join("\n")
  end

  def translate_to_english(input)
    input_string = input.split("\n")
    input_array = input_string.map do |input|
      input.scan(/../)
    end
    braille_arrays = input_array.transpose
    braille_arrays.map do |array|
      @alphabet.find_braille_value(array)
    end.join
    require "pry"; binding.pry
  end
end
