class Dollar
  attr_accessor :amount

  def initialize(amount)
    @amount = amount
  end

  def times(multiplier)
    Dollar.new(@amount * multiplier)
  end

  def equals(object) #@amount is refering to what .equals method is being called on.
    dollar = object
    @amount == dollar.amount
  end
end
