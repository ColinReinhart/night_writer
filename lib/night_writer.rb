require './lib/file_writer'

file_writer = FileWriter.new(ARGV[0], ARGV[1])
file_writer.translate_to_braille
file_writer.create_file
p file_writer.message
