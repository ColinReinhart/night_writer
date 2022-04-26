require './lib/dictionary'
require './lib/translate'

class FileWriter
  include Dictionary
  include Translate
  attr_reader :input,
              :output

  def initialize(argument1, argument2)
    @input = argument1
    @output = argument2
  end

  def message
    "Created '#{@output}' containing #{input_length} characters"
  end

  def read_input
    File.read(@input).delete("\n")
  end

  def input_length
    read_input.length
  end

  def create_file
    translated = File.open(@output, "w")
    display = braille_display
    display.each do |element|
      until display[:row3].length < 80
        translated.write("#{display[:row1].slice!(0..79)}\n")
        translated.write("#{display[:row2].slice!(0..79)}\n")
        translated.write("#{display[:row3].slice!(0..79)}\n")
      end
      translated.write("#{display[:row1]}\n")
      translated.write("#{display[:row2]}\n")
      translated.write("#{display[:row3]}\n")
    end
    translated.close

  end
end
