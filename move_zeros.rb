require "rspec/autorun"

def move_zeros(list)
  number_of_zeros = list.count(0)
  list.delete(0)
  number_of_zeros.times { list << 0 }
  list
end

describe "move_zeros" do
  it "returns zero in end of array" do
    result = move_zeros([0, 2, 5, 0, 9])
    expect(result).to eq([2, 5, 9, 0, 0])  
  end
end
