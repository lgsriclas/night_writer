require './lib/alphabet'

class NightWriter
  attr_reader :input,
              :output
  def initialize
    @input = File.read(ARGV[0]).chomp
    @output = File.write(ARGV[1])
    @alphabet = Alphabet.new

  end

  def translate
    message = File.open(@input)
    File.open(output_file, "w") do |file|
      file.write(message)
    end
  end

  def created_message
    "Created 'braille.txt' containing #{@input.length} characters."
  end
end

test = NightWriter.new
p test.created_message


# File.open('./message.txt', 'w') {|file| file.write(input)}

#message = Translator.new(input, output)



# input_array = ARGV
#
# puts input_array.length
# puts input_array.to_s
