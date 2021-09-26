

ARGV[0] = "message.txt"
ARGV[1] = "braille.txt"

input = File.open(ARGV[0]).each do |line|

  puts line
  puts line.length
end

File.write(ARGV[1]).each do |line|
  puts line
  puts line.length
end

puts "Created #{ARGV[1]} containing #{} characters."


# File.open('./message.txt', 'w') {|file| file.write(input)}

#message = Translator.new(input, output)



# input_array = ARGV
#
# puts input_array.length
# puts input_array.to_s
