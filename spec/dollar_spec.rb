require_relative '../lib/dollar'

RSpec.describe Dollar do
  it 'multiplies correctly' do
    five = Dollar.new(5)
    product = five.times(2)
    expect(product.amount).to eq(10)
    product = five.times(3)
    expect(product.amount).to eq(15)
  end

  it 'equates when amounts are the same' do
    expect(Dollar.new(5).equals(Dollar.new(5))).to be true
    expect(Dollar.new(5).equals(Dollar.new(6))).to be false
  end
end
