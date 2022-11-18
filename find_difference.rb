require 'rspec/autorun'

def find_diff(a, b)
  a - b
end

describe 'find_difference' do
  it "should return 2" do
    result = find_diff([1, 2, 3], [1, 3])
    expect(result).to eq([2]) 
  end

  it "should return 3, 4" do
    result = find_diff([1, 2, 3, 4], [1, 2])
    expect(result).to eq([3, 4])
  end

  it "should return empty" do
    result = find_diff([1, 2, 3], [1, 2, 3])
    expect(result).to eq([])
  end
end