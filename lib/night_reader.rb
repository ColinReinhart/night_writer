require './lib/file_reader'

file_reader = FileReader.new(ARGV[0], ARGV[1])
p file_reader.message
