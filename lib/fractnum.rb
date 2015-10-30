class Fractnum
    
    attr_accessor :num, :den
    
    def initialize(x,y)
        
        @num=x
        @den=y
        
    end
    
    def to_s
        
       return "#{@num}/#{@den}" 
    end
    
    # m.c.m sacado de rosetta
    
    def gcd(m, n)
        m, n = n, m % n until n.zero?
        m.abs
    end

    def mcm(*args)
        args.inject(1) do |m, n|
            return 0 if n.zero?
            (m * n).abs / gcd(m, n)
        end
    end
    
    def +(other) 
        
        mcm=mcm(@den,other.den)
        Fractnum.new((mcm/@den)*@num + (mcm/other.den)*other.num,mcm)
    end
    
    def -(other) 
        
        mcm=mcm(@den,other.den)
        Fractnum.new((mcm/@den)*@num - (mcm/other.den)*other.num,mcm)
    end
    
    def *(other) 
        
        Fractnum.new(@num*other.num,@den*other.den)
    end
    
    def /(other) 
        
        Fractnum.new(@num*other.den,@den*other.num)
    end
    
end