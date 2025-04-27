require_relative 'dollar'

five = Dollar.new(5)
five.times(2)
puts five.amount == 10 ? "test passed!" : "test failed!"
