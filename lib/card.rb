require 'pry'

class Card
  attr_accessor :amount

  def initialize
    @amount = 0.0
  end

  def load(amount)
    @amount += amount
  end

  def unload(amount)
    if @amount >= amount
      @amount -= amount
    else
      return "Insufficient funds"
    end
  end

end
