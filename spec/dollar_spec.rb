require_relative '../lib/dollar'
require_relative '../lib/franc'
require_relative '../lib/money'


RSpec.describe Dollar do
  it 'multiplies correctly' do
    five = Dollar.new(5)
    expect(Dollar.new(10)).to eq(five.times(2))
    expect(Dollar.new(15)).to eq(five.times(3))
  end

    it "correctly multiplies francs by a number" do
      five = Franc.new(5)
      expect(five.times(2)).to eq(Franc.new(10))
      expect(five.times(3)).to eq(Franc.new(15))
    end

  # it 'equates when amounts are the same' do
  #   expect(Dollar.new(5).equals(Dollar.new(5))).to be true
  #   expect(Dollar.new(5).equals(Dollar.new(6))).to be false
  # end

  it 'equates when amounts are the same' do
    expect(Dollar.new(5)).to eq(Dollar.new(5))# Using `==` for comparison
    expect(Dollar.new(5)).to_not eq(Dollar.new(6)) # Using `==` for comparison
  end

it 'tests equality between money objects' do
  expect(Money.dollar(5)).to eq(Money.dollar(5))
  expect(Money.dollar(5)).not_to eq(Money.dollar(6))
  expect(Money.franc(5)).to eq(Money.franc(5))
  expect(Money.franc(5)).not_to eq(Money.franc(6))
  expect(Money.dollar(5)).not_to eq(Money.franc(5))
end

end
