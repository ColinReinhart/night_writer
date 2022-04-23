class Dictionary
  attr_reader :to_braille

  def initialize
    @to_braille = to_braille
  end

  def to_braille
    {
      'a' => 'braille a',
      'b' => 'braille b',
      'c' => 'braille c',
      'd' => 'braille d',
      'e' => 'braille e',
      'f' => 'braille f',
      'g' => 'braille g',
      'h' => 'braille h',
      'i' => 'braille i',
      'j' => 'braille j',
      'k' => 'braille k',
      'l' => 'braille l',
      'm' => 'braille m',
      'n' => 'braille n',
      'o' => 'braille o',
      'p' => 'braille p',
      'q' => 'braille q',
      'r' => 'braille r',
      's' => 'braille s',
      't' => 'braille t',
      'u' => 'braille u',
      'v' => 'braille v',
      'w' => 'braille w',
      'x' => 'braille x',
      'y' => 'braille y',
      'z' => 'braille z',
    }
  end

end
