require 'lib/fractnum'
require 'test/unit'


class Test_fractnum < Test::Unit::TestCase
    
    def setup
        @fract1 = Fractnum.new(1,2)
        @fract2 = Fractnum.new(2,3)
    end
    
    def test_simple
        assert_equal("1/2", @fract1.to_s)
    end
end