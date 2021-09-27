class Translator
  attr_reader :alphabet,
              :night_writer

  def initialize
    @alphabet = Alphabet.new
    @night_writer = NightWriter.new
  end

  def input_to_array
    @night_writer.read.chars
  end

  def convert_to_braille(letter)
    @alphabet.characters[letter]
  end

end
