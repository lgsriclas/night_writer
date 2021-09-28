require './lib/night_writer'

RSpec.describe 'NightWriter' do
  it 'exist' do
    night_writer = NightWriter.new

    expect(night_writer).to be_an_instance_of NightWriter
  end

  it 'attributes' do
    night_writer = NightWriter.new

    expect(night_writer.input).to be_a String
  end

  it '#read' do
    night_writer = NightWriter.new

    expect(night_writer.read).to be_a String
    expect(night_writer.read).to eq('message.txt')
  end

  it '#write' do
    night_writer = NightWriter.new

    expect(night_writer.write).to be ARGV[1]
  end

  it '#created message' do
    night_writer = NightWriter.new
    expect(night_writer.created_message).to be_a String
    expect(night_writer.created_message).to eq(NightWriter.new.created_message)
  end
end
