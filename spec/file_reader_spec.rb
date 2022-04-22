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

  it "has attributes" do
    allow(@file_writer).to receive(:in).and_return('message.txt')
    allow(@file_writer).to receive(:out).and_return('braille.txt')
    expect(@file_writer.in).to eq('message.txt')
    expect(@file_writer.out).to eq('braille.txt')
  end

end
