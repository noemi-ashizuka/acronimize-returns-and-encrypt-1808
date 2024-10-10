require_relative "../encrypt.rb"

# RSPEC
# describe -> indeicates the method that we are testing
# it -> describes what the test does in plain english
# expect -> calls the method and compares the result to the expected result

describe "#encrypt" do
  it "should return a string" do
    expect(encrypt("")).to be_a(String)
  end

  it "should return 'B' when given 'E" do
    expect(encrypt("E")).to eq("B")
  end

  it "should return 'QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD' when given 'THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG'" do
    actual = encrypt('THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG')
    expected = 'QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD'
    expect(actual).to eq(expected)
  end

  it "should return 'QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD!' when given 'THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG!'" do
    actual = encrypt('THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG!')
    expected = 'QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD!'
    expect(actual).to eq(expected)
  end
end
