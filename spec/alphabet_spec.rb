require './lib/alphabet'

RSpec.describe 'Alphabet' do
  it '#exists' do
    alphabet = Alphabet.new

    expect(alphabet).to be_an_instance_of Alphabet
    expect(alphabet.characters).to be_a Hash
  end
end
