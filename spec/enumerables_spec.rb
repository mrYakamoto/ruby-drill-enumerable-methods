require_relative('../enumerables')

describe 'odd_indexed_integers' do
  it 'should provide elements with odd indices' do
    expect(odd_indexed_integers(["foo","bar","baz","bang"])).to eq(["bar","bang"])
  end
end

describe 'odd_integers' do
  it 'should return only add integers' do
    expect(odd_integers([3, 4, 7, 9, 10, 16])).to eq([3, 7, 9])
  end
end

describe 'first_under' do
  it 'should return the first number under "limit"' do
    expect(first_under([13, 21, 7, 0, 11, 106], 10)).to eq(7)
  end
end

describe 'add_bang' do
  it 'should return an array with an exclamation point added to each element' do
    expect(add_bang(["hi", "mom"])).to eq(["hi!", "mom!"])
  end
end

describe 'sum' do
  it 'should sum the contents of the array' do
    expect(sum([1, 1, 2, 3, 5])).to eq(12)
  end
end

describe 'sorted_triples' do
  it 'should re-organize an array into groups of three and source each group alphabetically' do
    words = %w(the salted pork is particularly good)
    expect(sorted_triples(words)).to eq([["pork", "salted", "the"],
                                         ["good", "is", "particularly"]])
  end
end
