require './lib/alphabet'
require './lib/translator'

class NightReader
  attr_reader :input,
              :output,
              :translator

  def initialize
    @input = ARGV[0]
    @output = ARGV[1]
    @translator = Translator.new
  end

  def read
    File.read(@input)
  end

  def translate
    @translator.translate_to_english(read)
  end

  def write
    File.open(@output, "w") do |file|
      file.write(translate)
    end
  end

  def created_message
    "Created #{@output} containing #{@input.length} characters."
  end
end

p NightReader.new.created_message
NightReader.new.read
NightReader.new.translate
NightReader.new.write
