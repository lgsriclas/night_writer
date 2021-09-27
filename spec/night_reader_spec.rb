require './lib/night_reader'

RSpec.describe 'NightReader' do
  it 'exist' do
    read = NightReader.new

    expect(read).to be_an_instance_of NightReader
  end

  it 'attributes' do
    read = NightReader.new

    expect(read.input).to be_a String
  end

  it '#read' do
    read = NightReader.new

    expect(read.read).to be_a String
  end

  it '#write' do
    read = NightReader.new

    expect(read.write).to be_a String
  end

  it '#created message' do
    read = NightReader.new
    expect(read.created_message).to be_a String
  end
end
