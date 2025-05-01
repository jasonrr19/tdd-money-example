class Money
  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def ==(object)
    # money = object  # no casting in Ruby
    @amount == money.amount
  end

  end
