class FileWriter
  attr_reader :in,
              :out

  def initialize
    @input = ARGV[0] #File.read(ARGV[0]).chomp
    @output = ARGV[1] #File.write(ARGV[1])
  end

  def message
    "Created '#{output_name}' containing #{input_length} characters"
  end
# require "pry"; binding.pry
  def read_input
    File.read(@input)
  end
require "pry"; binding.pry
  def input_length
    read_input.length
  end

  def output_name
    @output
  end

  def create_file
    File.write(@output, "w")
  end

end
