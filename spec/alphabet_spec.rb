require './lib/alphabet'

RSpec.describe 'Alphabet' do
  it '#exists' do
    alphabet = Alphabet.new

    expect(alphabet).to be_an_instance_of Alphabet
  end

  it '#characters' do
    alphabet = Alphabet.new

    expect(alphabet.characters).to be_a Hash
  end

  it 'find_value' do
    alphabet = Alphabet.new

    expect(alphabet.find_value("f")).to be_an Array
    expect(alphabet.find_value("a")).to eq(["0.", "..", ".."])
    expect(alphabet.find_value("A")).to eq(["..0.", "....", ".0.."])
  end

  it 'find_key' do
    alphabet = Alphabet.new

    expect(alphabet.find_key(["0.", "..", ".."])).to be_a String
    expect(alphabet.find_key(["0.", "..", ".."])).to eq("a")
    expect(alphabet.find_key(["..0.", "....", ".0.."])).to eq("A")


  end
end
