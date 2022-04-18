require "big"

module Mathematic::Calculus
  # TODO: Code test and test BigInt
  {% begin %}
    {% types = %w(UInt8 UInt16 UInt32 UInt64 UInt128 BigInt)%}
    {% for type in types %}
      def self.factorial(value : {{ type.id }}) : {{ type.id }}
        zero = {{ type.id }}.new "0"
        one = {{ type.id }}.new "1"
        result = one
        return result if value == zero
        while value != zero
          result = result * value
          value -= one
        end

        result
      end
    {% end %}
  {% end %}
end
