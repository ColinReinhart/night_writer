require 'simplecov'
require './lib/file_reader'

RSpec.describe FileReader do
  before :each do
    @file_reader = FileReader.new
  end

  it "exists" do
    expect(@file_reader).to be_a(FileReader)
  end

  end

end
