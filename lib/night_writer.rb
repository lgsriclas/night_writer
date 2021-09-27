require './lib/alphabet'
require './lib/translator'

class NightWriter
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
    @translator.translate_to_braille(read)
  end

  def write
    File.open(@output, "w") do |file|
      file.write(translate)
    end
  end

  def created_message
    "Created #{@output} containing #{read.length} characters."
  end
end

p NightWriter.new.created_message
NightWriter.new.read
NightWriter.new.translate
NightWriter.new.write
