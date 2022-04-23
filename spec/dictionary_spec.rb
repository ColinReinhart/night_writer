require './lib/dictionary'

describe Dictionary do
  before :each do
    @dictionary = Dictionary.new
  end

  it "exists" do
    expect(@dictionary).to be_a(Dictionary)
  end

  it "has dictionary hash" do
    expected = {
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
    expect(@dictionary.to_braille).to eq(expected)
  end
end
