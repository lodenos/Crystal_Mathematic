require "big"

module Mathematic::Calculus

  FACTORIAL_CACHE = Array(BigInt).new(1, BigInt.new(1))
  FACTORIAL_HEIGHEST = [BigInt.new 0]

  def self.factorial(value : BigInt) : BigInt
    return FACTORIAL_CACHE[value.to_i] unless value > FACTORIAL_HEIGHEST[0]
    index = FACTORIAL_HEIGHEST[0]
    result = FACTORIAL_CACHE[index.to_i]
    while index < value
      index += 1
      result = result * index
      # Cache It
      FACTORIAL_CACHE << result
      FACTORIAL_HEIGHEST[0] = index
    end

    result
  end
end
