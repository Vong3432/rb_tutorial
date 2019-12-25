# import class and module
require_relative "calculatorClass"
require_relative "calculation"

# ask user to start
puts "This is ruby calculator"
puts "Start now?"
puts "1. Yes"
puts "2. Enter any key except 1 to exit"

# user's answer
option = gets.chomp

# terminate the program
if option != "1"
    print("Calculate is exited.")
    exit(0)
end

# display user's answer
puts "You choose #{option}" 

# check if user wants to stop
shouldStop = false

# start the program
while shouldStop == false
    
    # Enter first num
    puts "Enter first num"
    n1 = gets.chomp.to_f

    # Enter second num
    puts "Enter second num"
    n2 = gets.chomp.to_f

    # Initialize class
    testCalculator = Calculator.new(n1, n2)

    # Display options from class
    testCalculator.showOptions

    # Get user's option
    operation = gets.chomp

    # include calculationModule.rb
    while (operation >= "1" && operation <= "4") == false
        puts "Enter 1-4 only"        
    end        

    include Calculation    
    case operation        

        when "1"          
            testCalculator.total = add(testCalculator.firstNum, testCalculator.secondNum)
        when "2"
            testCalculator.total = minus(testCalculator.firstNum, testCalculator.secondNum)
        when "3"
            testCalculator.total = multiply(testCalculator.firstNum, testCalculator.secondNum)
        when "4"
            testCalculator.total = divide(testCalculator.firstNum, testCalculator.secondNum)        
    end 
    

    # show result    
    puts "Result is #{testCalculator.total}"
    

    # Ask user should stop
    puts "Continue?"
    puts "1. Yes"
    puts "2. No"

    # user's option
    option = gets.chomp

    if(option == "2")
        shouldStop = true  
    end      

end

exit(0)