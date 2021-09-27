# require './lib/night_writer'
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
    expect(translator.alphabet.characters.key(['0.', '..', '..'])).to eq('a')
    expect(translator.alphabet.characters.key(['0.', '.0', '00'])).to eq('z')
  end

  it '#translate_to_braille' do
    translator = Translator.new

    expect(translator.translate_to_braille('a')).to eq("0.\n..\n..")
  end

  it '#translate_to_english' do
    translator = Translator.new

    expect(translator.translate_to_english(['0.', '..', '..'])).to eq("a")
  end



end
