require 'rspec/autorun'

def count_duplicates(str)
  str.each_char.find_all {|e| str.downcase.count(e) > 1 }.uniq.size
end

describe "count_duplicates" do
  it "should return 2" do
    result = count_duplicates('aabbc')
    expect(result).to eq(2) 
  end

  it "should return 4" do
    result = count_duplicates('AaBbCcDdefg')
    expect(result).to eq(4) 
  end
end
