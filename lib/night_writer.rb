class NightWriter
  attr_reader :input,
              :output
  def initialize
    @input = (ARGV[0]).chomp
    @output = (ARGV[1])
  end

  def created_message
    "Created #{@output} containing #{@input.length} characters."
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
