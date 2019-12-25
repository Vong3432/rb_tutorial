module Calculation    

    def multiply(n1, n2) 
        n1 * n2
    end
    
    def add(n1, n2) 
        n1 + n2
    end

    def minus(n1, n2) 
        n1 - n2
    end

    def divide(n1, n2)         
        if(n2 != 0)
            n1 / n2
        else
            "n1 can't be divided by 0"
        end
    end

end