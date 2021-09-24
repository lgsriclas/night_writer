

ARGV[0] = "message.txt"

File.open(ARGV[0]).each do |line|
  puts line
end

# File.open('./message.txt', 'w') {|file| file.write(input)}

#message = Translator.new(input, output)



# input_array = ARGV
#
# puts input_array.length
# puts input_array.to_s
