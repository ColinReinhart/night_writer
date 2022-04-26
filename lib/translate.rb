module Translate

  def translate_to_braille
    braille_array = read_input.split('').map { | letter | to_braille[letter] }
  end

  def braille_display
    display_hash = {}
    translate_to_braille.each do |array|
      array = ['..', '..', '..'] if array.nil?
      if display_hash == {}
        display_hash[:row1] = array[0]
        display_hash[:row2] = array[1]
        display_hash[:row3] = array[2]
      else
        display_hash[:row1] += array[0]
        display_hash[:row2] += array[1]
        display_hash[:row3] += array[2]
      end
    end
    display_hash
  end

end
