require './lib/night_reader'

RSpec.describe 'NightReader' do
  it 'exist' do
    night_reader = NightReader.new

    expect(night_reader).to be_an_instance_of NightReader
  end

  it 'attributes' do
    night_reader = NightReader.new

    expect(night_reader.input).to be_a String
  end

  it '#read' do
    night_reader = NightReader.new

    expect(night_reader.read).to be_a String
    expect(night_writer.read).to eq('braille.txt')
  end

  it '#write' do
    night_reader = NightReader.new

    expect(night_reader.write).to be ARGV[1]
  end

  it '#created message' do
    night_reader = NightReader.new

    expect(night_reader.created_message).to be_a String
    expect(night_reader.created_message).to eq(NightReader.new.created_message)
  end
end
