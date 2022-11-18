require 'rspec/autorun'

def exes_and_ohs(str)
  str.count('O') == str.count('X')
end

describe "exes_and_ohs" do
  it "should return true" do
    result = exes_and_ohs('XXOO')
    expect(result).to eq(true)  
  end

  it "should return false" do
    result = exes_and_ohs('XXXOO')
    expect(result).to eq(false)  
  end
end