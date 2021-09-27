require './lib/alphabet'
require './lib/translator'

class NightWriter
  attr_reader :input,
              :output,
              :alphabet

  def initialize
    @input = ARGV[0]
    @output = ARGV[1]
  end

  def read
    File.read(@input)
  end

  def write
    File.open(@output, "w") do |file|
      file.write(read)
    end
  end

  def created_message
    "Created #{@output} containing #{read.length} characters."
  end
end

p NightWriter.new.created_message
NightWriter.new.read
NightWriter.new.write
