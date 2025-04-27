# public void testMultiplication() {
#   Dollar five= new Dollar(5);
#   five.times(2);
#   assertEquals(10, five.amount);
#   }

class Dollar
  attr_accessor :amount

  def initialize(amount)
    @amount = amount
  end

  def times(multiplier)
    @amount *=multiplier
  end
end
