require_relative "../acronymize_returns.rb"

# RSPEC
# describe -> indeicates the method that we are testing
# it -> describes what the test does in plain english
# expect -> calls the method and compares the result to the expected result

describe "#acronymize" do
  it "should return 'A' when given 'as'" do
    expect(acronymize("as")).to eq("A")
  end

  it "it should return a string" do
    expect(acronymize("")).to be_a(String)
  end

  it "should return 'WTF' when given 'what the french" do 
    expect(acronymize("what the french")).to eq("WTF")
  end

  it "should return 'ASAP' when given 'as soon as possible" do 
    expect(acronymize("as soon as possible")).to eq("ASAP")
  end
end

# puts acronymize("what the french") == "WTF"
# puts acronymize("Oh My GoD") == "OMG"
# puts acronymize("as soon as Possible") == "ASAP"
# puts acronymize("as") == "A"
# puts acronymize("") == ""