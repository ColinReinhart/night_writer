require './lib/file_writer'

file_writer = FileWriter.new
p file_writer.message
file_writer.translate_to_braille
file_writer.create_file
