class FileWriter
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
    File.read(@input)
  end

  def input_length
    read_input.length
  end

  def output_name
    @output
  end

  def create_file
    File.write(@output, read_input)
    require "pry"; binding.pry
  end
end
