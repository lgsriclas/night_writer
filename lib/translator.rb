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
      if character != "\n"
        braille_array << @alphabet.find_letter_value(character)
      end
    end
    x = braille_array.compact.transpose
    x.map { | row | row.join(' ')}.join("\n")
  end

  def translate_to_english(input)
    results = []
    letters = input.split("\n")
        letters.map do |letter|
      letter.delete(" ")
      results << @alphabet.find_braille_value(letters)
    end
    results.uniq.join
  end

  #   results = []
  #   letters = input.split("\n")
  #   letters.each do |letter|
  #     if letter != '\n'
  #       results << @alphabet.find_braille_value(letter)
  #     end
  #     x = results.compact.transpose
  #     x.map { | row | row.join(' ')}.join("\n")
  #   end
  #   results.uniq.join
  # end

end
