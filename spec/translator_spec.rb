# require './lib/night_writer'
# require './lib/night_reader'
require './lib/translator'
require './lib/alphabet'

RSpec.describe 'Translator' do
  it '#exists' do
     translator = Translator.new

    expect(translator).to be_an_instance_of Translator
  end

  it '#attributes' do
    translator = Translator.new

    expect(translator.alphabet).to be_an_instance_of Alphabet
    expect(translator.alphabet.english_characters.key(['0.', '..', '..'])).to eq('a')
    expect(translator.alphabet.english_characters.key(['0.', '.0', '00'])).to eq('z')
    expect(translator.alphabet.braille_characters.key('f')).to eq(["00", "0.", ".."])
  end

  it '#translate_to_braille' do
    translator = Translator.new

    expect(translator.translate_to_braille('a')).to be_a String
    expect(translator.translate_to_braille('a')).to eq("0.\n..\n..")
  end

  it '#translate_to_english' do
    translator = Translator.new

    # expect(translator.translate_to_english(["0.", "..", ".."])).to eq("a")
    expect(translator.translate_to_english("0.\n..\n..")).to eq("a")
    expect(translator.translate_to_english("..00\n..00\n.00.")).to eq("Q")
  end
end
