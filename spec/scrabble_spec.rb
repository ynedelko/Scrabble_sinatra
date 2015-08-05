require('rspec')
require('scrabble')

describe('String#scrabble') do
  it("returns a scrabble score for a 1 point letter") do
    expect("a".scrabble()).to(eq(1))
  end
  it("returns correct scrabble score for 2 point letters") do
    expect("d".scrabble()).to(eq(2))
  end
  it("returns correct scrabble score for all point letters") do
    expect("x".scrabble()).to(eq(8))
    expect("z".scrabble()).to(eq(10))
    expect("f".scrabble()).to(eq(4))
  end
  it("returns correct scrabble score for multi-letter words") do
    expect("shoe".scrabble()).to(eq(7))
  end
  it("returns correct scrabble score for harder words") do
    expect("Xerxes".scrabble()).to(eq(20))
    expect("Zealot".scrabble()).to(eq(15))
  end
end
