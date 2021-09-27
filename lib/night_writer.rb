require './lib/alphabet'

class NightWriter
  attr_reader :input,
              :output,
              :alphabet
  def initialize
    @input = File.readlines(ARGV[0])
    @output = File.write(ARGV[1])
    @alphabet = Alphabet.new
  end

  def translate
    message = File.open(@output)
    File.open(output, "w") do |file|
      file.write(message)
    end
  end

  def created_message
    "Created 'braille.txt' containing #{@input.length} characters."
  end
end

test = NightWriter.new.translate
p test.created_message


#File.open('./message.txt', 'w') {|file| file.write(input)}

#message = Translator.new(input, output)
