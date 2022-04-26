require 'simplecov'
SimpleCov.start

require './lib/file_writer'
require './lib/translate'

describe Translate do
  before :each do
    @night_writer = FileWriter.new
  end

  it "can translate english to braille" do
    ARGV.replace(['message.txt', 'english.txt'])

    expect(@night_writer.translate_to_braille).to eq(['O.', '..', '..'])
  end
end
