require './lib/alphabet'

RSpec.describe 'Alphabet' do
  it '#exists' do
    alphabet = Alphabet.new

    expect(alphabet).to be_an_instance_of Alphabet
  end

  it '#characters' do
    alphabet = Alphabet.new

    expect(alphabet.english_characters).to be_a Hash
    expect(alphabet.braille_characters).to be_a Hash
  end

  it 'find_letter_value' do
    alphabet = Alphabet.new

    expect(alphabet.find_letter_value("f")).to be_an Array
    expect(alphabet.find_letter_value("a")).to eq(["0.", "..", ".."])
    expect(alphabet.find_letter_value("A")).to eq(["..0.", "....", ".0.."])
  end

  it 'find_braille_value' do
    alphabet = Alphabet.new

    expect(alphabet.find_braille_value(["0.", "..", ".."])).to be_a String
    expect(alphabet.find_braille_value(["0.", "..", ".."])).to eq("a")
    expect(alphabet.find_braille_value(["..0.", "....", ".0.."])).to eq("A")
  end
end
