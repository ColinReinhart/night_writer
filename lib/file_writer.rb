require './lib/dictionary'
require './lib/translate'

class FileWriter
  include Dictionary
  include Translate
  attr_reader :in,
              :out

  def initialize
    @input = ARGV[0]
    @output = ARGV[1]
  end

  def message
    "Created '#{output_name}' containing #{input_length} characters"
  end

  def read_input
    File.read(@input).delete("\n")
  end

  def input_length
    read_input.length
  end

  def output_name
    @output
  end

  def create_file
    File.write(output_name, translate_to_braille)
  end
end
