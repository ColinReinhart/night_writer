require 'rspec'
require 'simplecov'
require './lib/file_writer'

RSpec.describe FileWriter do
  before :each do
    @file_writer = FileWriter.new
  end

  it "exists" do
    expect(@file_writer).to be_a(FileWriter)
  end

end
