module Generator
  module Basic
    class Terms < Generator::Base
      
      def self.title
        return "Mult/Divide Complex Terms"
      end
      
      def self.description
        return "Chains of multiplication and division."
      end
      
      def self.instructions
        return <<-INST
Alternate division and multiplication as much as possible to reduce slide moves.
Ex: (a*b)/(c*d) should be performed as a / c * b / d
Note that this technique can be combined with the CI scale to perform
multiplication more quickly and with less error.
INST
      end
      
      def initialize
        num_count = Rand.int(2,5)
        denom_count = Rand.int(2,5)
        
        @numerators = Array.new(num_count) { Rand.mag_float(0.001,1000) }
        @denominators = Array.new(denom_count) { Rand.mag_float(0.001,1000) }
      end
      
      def solution
        num = @numerators.inject(1) {|prod, x| prod*x}
        denom = @denominators.inject(1) {|prod, x| prod*x}
        return num/denom
      end
      
      def to_s
        return '( ' + @numerators.join(' * ') + ' ) / ( ' + @denominators.join(' * ') + ' )'
      end
      
    end
  end
end