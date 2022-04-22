class FileWriter
  attr_reader :in,
              :out
              
  def initialize
    @in = ARGV[0]
    @out = ARGV[1]
  end

end
