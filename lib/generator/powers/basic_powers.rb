module Generator
  module Powers
    class BasicPowers < Base
      
      def self.title
        return "Basic Powers"
      end
      
      def self.description
        return "Basic power problems."
      end
      
      def self.instructions
        return <<-INST
To calculate arbitrary x^n:
1. Set 1 on C over x on LL#
2. Read answer on appropriate LL# under n on C.
(Multiplication of result requires transfer from LL# to C)
INST
      end
      
      def initialize
        #@x = Rand.mag_float(1,10) * Rand.sign
		@x = Rand.mag_float(1,10)
        @n = Rand.mag_float(0.1,0.001) * Rand.sign
      end
      
      def solution
        return @x**@n
      end
      
      def to_s
        return "#{@x} ^ #{@n}"
      end
      
    end
  end
end