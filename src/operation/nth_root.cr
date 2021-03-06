require "./natural_logarithm"
require "../function/exponential"

module Mathematic::Operation


  # b^{x} = e^{xln(b)}

  def self.nth_root(radicant : BigDecimal, degree : BigDecimal) : BigDecimal
    one = BigDecimal.new "1"
    Function.exponential (one / degree) * natural_logarithm(radicant)
  end
end

radicant = BigDecimal.new "8"
degree = BigDecimal.new "3"


require "benchmark"

bench = Benchmark.memory do
  a = Array(Int32).new
end
puts bench
# puts Mathematic::Operation.nth_root radicant, degree