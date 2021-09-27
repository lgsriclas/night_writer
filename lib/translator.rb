class Translator
  attr_reader :alphabet,
              :night_writer

  def initialize
    @alphabet = Alphabet.new
    # @night_writer = NightWriter.new
  end

  def translate(input)
    letter_array = []
    input.chars.find_all do |character|
      if character != '\n'
        letter_array << change(character)
      end
    end
    x = letter_array.compact.transpose
    x.map { | row | row.join(' ')}.join("\n")
  end

end
