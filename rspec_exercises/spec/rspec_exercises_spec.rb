require 'rspec'
require 'rspec_exercises'

describe "#Remove_dups" do
  let (:array) { [3, 2, 1, 1, 3] }

  it "it removes duplicates" do
    expect(array.my_uniq.length).to eq(array.uniq.length)
  end
  it "returns the array sorted" do
    expect(array.my_uniq).to eq(array.uniq.sort)
  end

end

describe "#two_sum" do
  let (:array) { [-1, 0, 2, -2, 1] }

  it "returns an array of indices of sum to zero" do
    expect(array.two_sum).to eq([[0, 4], [2, 3]])
  end
end

describe "#my_transpose" do
  let (:matrix) { [[0, 1, 2], [3, 4, 5], [6, 7, 8]] }

  it "returns a transpose of the matrix" do
    expect(matrix.my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
  end
end
