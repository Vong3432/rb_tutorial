class Calculator

    attr_accessor :firstNum, :secondNum, :total

    @total
    @firstNum
    @secondNum
    
    # instance variable
    def initialize(n1, n2)
        @firstNum = n1
        @secondNum = n2
    end    

    def showOptions
        puts "1. +"
        puts "2. -"
        puts "3. *"
        puts "4. /"
    end    

end