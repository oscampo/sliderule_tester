module Generator
  module Logs
    class AdvancedExponents < Base
      
      def self.title
        return "Advanced Exponents"
      end
      
      def self.description
        return "Exponentiation of common bases with very large or small numbers."
      end
      
      def self.instructions
        return <<-INST
There are two methods for doing this:
A. Use LL#:
  1. Place 1 on C over the base on LL#.
  2. Read answer on LL# under exponent on C.
B. In extreme circumstances, convert y = b^x to log(y) = x*log(b), and use L to
   find the log/antilog.  (This is less efficient and usually less accurate.)
C. When in base 10, the fractional part of the exponent can be converted into
   the significand and the integer part becomes the exponent in scientfic
   notation.
INST
      end
      
      def initialize
        @b = Rand.element([:e, 10])
        @x = Rand.element([Rand.mag_float(0.1,0.0001), Rand.mag_float(10,1000)]) * Rand.sign
        @b_num = @b==:e ? Math::E : @b
      end
      
      def solution
        return @b_num**@x
      end
      
      def to_s
        if @b==:e
          return "exp(#{@x})"
        else
          return "#{@b}^#{@x}"
        end
      end
      
    end
  end
end