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
      if character != '\n'
        braille_array << @alphabet.find_letter_value(character)
      end
    end
    x = braille_array.compact.transpose
    x.map { | row | row.join(' ')}.join("\n")
  end

  def translate_to_english(input)
    letters = input.split("\n")
    letters.map do |letter|
      letter.delete(" ")
    end
    # x.map do |letter_part|
    #   letter_part.split(" ")
    # end.flatten
    @alphabet.find_braille_value(letters)
    # message.map { | row | row.join("")}
  end

    # letters = []
    # input.each do |array|
    #   if array != '\n'
    #     letters << @alphabet.find_braille_value(input)
    #   end
    #   x = letters.compact.transpose
    #   x.map { | row | row.join(' ')}.join("\n")
    # end
    # letters.uniq.join

end
