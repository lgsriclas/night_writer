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

  def translate
    Translator.translate(read)
  end

  def write
    File.open(@output, "w") do |file|
      file.write(translate)
    end
  end

  def created_message
    "Created #{@output} containing #{@input.size} characters."
  end
end

p NightReader.new.created_message
NightReader.new.read
NightReader.new.translate
NightReader.new.write
