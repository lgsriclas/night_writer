require './lib/night_writer'
require './lib/translator'

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

  it '#convert_to_braille' do
    translator = Translator.new

    expect(translator.convert_to_braille('a')).to eq(['0.', '..', '..'])
  end

  it '#input_to_array' do
    translator = Translator.new

    expect(translator.input_to_array).to be_an Array
  end
end
