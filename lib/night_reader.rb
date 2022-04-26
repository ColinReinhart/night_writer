require './lib/file_writer'

file_reader = FileWriter.new(ARGV[0], ARGV[1])
file_reader.create_file
p file_reader.message
