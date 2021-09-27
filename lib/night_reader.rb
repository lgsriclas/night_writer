require './lib/alphabet'
require './lib/translator'

class NightReader
  attr_reader :input,
              :output

  def initialize
    @input = ARGV[0]
    @output = ARGV[1]
  end

  def read
    File.read(@input)
  end

  def write
    File.open("#{@output}", "w") do |file|
      file.write
    end
  end

  def created_message
    "Created #{@output} containing #{write.length} characters."
  end
end

p NightReader.new.created_message
