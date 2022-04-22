class FileWriter
  attr_reader :in,
              :out

  def initialize
    @in = File.read(ARGV[0]).chomp
    @out = ARGV[1]
  end

  def message
    p "Created 'braille.txt' containing 256 characters"
  end

end
