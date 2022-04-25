module Translate

  def translate_to_braille
    braille_array = read_input.split('').map { | letter | to_braille[letter] }
  end



end
