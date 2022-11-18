require 'rspec/autorun'

def score_points(scores)
  scores.join(':').split(':').map(&:to_i).sum
end

describe "score_points" do
  let(:result) { score_points(['5:0', '7:1']) }
  it "should return 13 points" do
    expect(result).to eq(13) 
  end
end
