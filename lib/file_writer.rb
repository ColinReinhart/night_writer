class FileWriter
  attr_reader :in,
              :out

  def initialize
    @in = File.read(ARGV[0]).chomp
    @out = ARGV[1]
  end

  def message
    p "Created '#{@out}' containing #{@in.length} characters"
  end

end
