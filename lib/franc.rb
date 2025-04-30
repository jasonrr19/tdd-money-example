class Franc
  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def times(multiplier)
    Franc.new(@amount * multiplier)
  end

  # def equals(object) #@amount is refering to what .equals method is being called on.
  #   Franc = object
  #   @amount == Franc.amount
  # end

  def ==(other)#.equals is built into ruby, I need to define how I want it to compare because I need to check the internal state.
    other.is_a?(Franc) && @amount == other.amount
  end
end
