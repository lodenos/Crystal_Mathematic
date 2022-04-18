require "big"

module Mathematic::Operation


  def self.natural_logarithm(value : BigDecimal) : BigDecimal
    result = BigDecimal.new 0
    one = BigDecimal.new 1
    two = BigDecimal.new 2
    
    
    n = one
    tmp = (value - one) / (value + one)
    max = 1000
    while n < max
      result = result + (one / (two * n - one)) * (tmp ** (two * n - one).to_i64)
      n += one
    end

    two * result
  end
end

# v = BigDecimal.new 2
# puts Mathematic::Operation.natural_logarithm v