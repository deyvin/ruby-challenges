require 'rspec/autorun'

def max_min(str)
  max = str.split.map(&:to_i).max
  min = str.split.map(&:to_i).min
  "#{max}, #{min}"
end

describe "max_min" do
  it "Should return 5 and 1" do
    result = max_min('1 2 3 4 5')
    expect(result).to eq('5, 1')  
  end

  it "Should return 50 and 10" do
    result = max_min('10 25 36 48 50')
    expect(result).to eq('50, 10')  
  end
end