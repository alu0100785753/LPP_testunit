class Fractnum
    
    attr_accessor :num, :den
    
    def initialize(x,y)
        
        @num=x
        @den=y
        
    end
    
    def to_s
        
       return "#{@num}/#{@den}" 
    end
    
end