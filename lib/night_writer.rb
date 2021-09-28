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

  def wrap_text
    results = []
    translate.each_char do |characters|
      if characters.length > 80
        results << characters.join.slice!(80..-1)
      end
      results
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
NightWriter.new.wrap_text
