require_relative 'money'
class Dollar < Money
  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def times(multiplier)
    Dollar.new(@amount * multiplier)
  end

  # def equals(object) #@amount is refering to what .equals method is being called on.
  #   dollar = object
  #   @amount == dollar.amount
  # end

  def ==(other)#.equals is built into ruby, I need to define how I want it to compare because I need to check the internal state.
    other.is_a?(Dollar) && @amount == other.amount
  end
end
