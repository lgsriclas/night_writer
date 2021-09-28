require './lib/night_writer'

RSpec.describe 'NightWriter' do
  it 'exist' do
    write = NightWriter.new
    input = ARGV[0]
    output = ARGV[1]

    expect(write).to be_an_instance_of NightWriter
  end

  it 'attributes' do
    write = NightWriter.new

    expect(write.input).to be_a String
  end

  it '#created message' do
    write = NightWriter.new
    expect(write.created_message).to be_a String
    expect(write.created_message).to eq(NightWriter.new.created_message)
  end
end
