require 'simplecov'
SimpleCov.start

require 'rspec'
require './lib/file_writer'

RSpec.describe FileWriter do
  before :each do
    @file_writer = FileWriter.new("message.txt", "braille.txt")
  end

  it "exists" do
    expect(@file_writer).to be_a(FileWriter)
  end

  it "has attributes" do
    expect(@file_writer.input).to eq('message.txt')
    expect(@file_writer.output).to eq('braille.txt')
  end

  it "message contains all needed info" do
    expect(@file_writer.message).to eq("Created 'braille.txt' containing 446 characters")
  end

  it "can create read input file" do
    expected = 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
    expect(@file_writer.read_input).to eq(expected)
  end

  it "can tell input length" do
    expect(@file_writer.input_length).to eq(446)
  end

  it "can write a translated file" do
    file_writer = FileWriter.new('test_message.txt', 'test_braille.txt')
    file_writer.create_file
    new_file = File.open("test_braille.txt")
    test = new_file.read
    new_file.close

    expected = "O.O.O.O.O.\nOO.OO.O..O\n....O.O.O.\nO.O.O.O.O.\nOO.OO.O..O\n....O.O.O.\nO.O.O.O.O.\nOO.OO.O..O\n....O.O.O.\n"
    expect(test).to eq(expected)
  end

  it "can write a translated file" do
    file_writer = FileWriter.new('test_message_long.txt', 'test_braille_long.txt')
    file_writer.create_file
    new_file = File.open("test_braille_long.txt")
    test = new_file.read
    new_file.close
    control_file = File.open("control_file.txt")
    control = control_file.read
    control_file.close
    expect(test).to eq(control)
  end
end
