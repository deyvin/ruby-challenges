require 'rspec/autorun'

def vowel_count(str)
  str.downcase.count('aeiou')
end

describe 'vowel_count' do
  it 'it should to return 2' do
    result = vowel_count('abbcci')
    expect(result).to eq(2)
  end

  it 'should to return 3 with upcase str' do
    result = vowel_count('ABBICCO')
    expect(result).to eq(3)
  end
end