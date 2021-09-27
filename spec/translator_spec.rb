# require './lib/night_writer'
require './lib/translator'

RSpec.describe 'Translator' do
  it 'exist' do
     translator = Translator.new

    expect(translator).to be_an_instance_of Translator
  end
end
