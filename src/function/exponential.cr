require "../calculus"

module Mathematic::Function

  def self.exponential(value : BigDecimal) : BigDecimal
    result = BigDecimal.new "0"
    n = 0
    while n < 100
      result += (value ** n) / Calculus.factorial BigInt.new(n)
      n += 1
    end

    result
  end
end

# n = BigDecimal.new 10
# puts Mathematic::Function.exponential n