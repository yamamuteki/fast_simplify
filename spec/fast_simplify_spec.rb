require 'spec_helper'

describe FastSimplify do
  let(:array) { (1..20).to_a }

  it 'has a version number' do
    expect(FastSimplify::VERSION).not_to be nil
  end

  it 'should simplify any rate return simplified length' do
    expect(FastSimplify.simplify(array, 2.0).length).to eq 40
    expect(FastSimplify.simplify(array, 1.0).length).to eq 20
    expect(FastSimplify.simplify(array, 0.9).length).to eq 18
    expect(FastSimplify.simplify(array, 0.8).length).to eq 16
    expect(FastSimplify.simplify(array, 0.7).length).to eq 14
    expect(FastSimplify.simplify(array, 0.6).length).to eq 12
    expect(FastSimplify.simplify(array, 0.5).length).to eq 10
    expect(FastSimplify.simplify(array, 0.4).length).to eq 8
    expect(FastSimplify.simplify(array, 0.3).length).to eq 6
    expect(FastSimplify.simplify(array, 0.2).length).to eq 4
    expect(FastSimplify.simplify(array, 0.1).length).to eq 2
    expect(FastSimplify.simplify(array, 0.0).length).to eq 2
  end

  it 'should simplify any rate return simplified array' do
    expect(FastSimplify.simplify(array, 2.0)).to eq [1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19, 20, 20]
    expect(FastSimplify.simplify(array, 1.0)).to eq [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
    expect(FastSimplify.simplify(array, 0.9)).to eq [1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 19, 20]
    expect(FastSimplify.simplify(array, 0.8)).to eq [1, 2, 4, 5, 6, 7, 9, 10, 11, 12, 14, 15, 16, 17, 19, 20]
    expect(FastSimplify.simplify(array, 0.7)).to eq [1, 2, 4, 5, 7, 8, 10, 11, 13, 14, 16, 17, 19, 20]
    expect(FastSimplify.simplify(array, 0.6)).to eq [1, 3, 4, 6, 8, 10, 11, 13, 15, 17, 18, 20]
    expect(FastSimplify.simplify(array, 0.5)).to eq [1, 3, 5, 7, 9, 12, 14, 16, 18, 20]
    expect(FastSimplify.simplify(array, 0.4)).to eq [1, 4, 6, 9, 12, 15, 17, 20]
    expect(FastSimplify.simplify(array, 0.3)).to eq [1, 5, 9, 12, 16, 20]
    expect(FastSimplify.simplify(array, 0.2)).to eq [1, 7, 14, 20]
    expect(FastSimplify.simplify(array, 0.1)).to eq [1, 20]
    expect(FastSimplify.simplify(array, 0.0)).to eq [1, 20]
  end
end
