require 'rspec'
require 'simplecov'
SimpleCov.start
require './lib/file_writer'

RSpec.describe FileWriter do
  before :each do
    @file_writer = FileWriter.new
  end

  it "exists" do
    expect(@file_writer).to be_a(FileWriter)
  end

  it "has attributes" do
    allow(@file_writer).to receive(:input).and_return('message.txt')
    allow(@file_writer).to receive(:output).and_return('braille.txt')
    expect(@file_writer.input).to eq('message.txt')
    expect(@file_writer.output).to eq('braille.txt')
  end

  it "prints to command line" do
    allow(@file_writer).to receive(:message).and_return("Created 'braille.txt' containing 256 characters")
    expect(@file_writer.message).to eq("Created 'braille.txt' containing 256 characters")
  end

  it "can create new file with text in it" do
    @file_writer.create_file
    require "pry"; binding.pry
    expect(@file_writer.read_input).to eq('a')
  end

end
