#Have the function PrimeTime(num) take the num parameter being passed and return the string true if the parameter is a prime number, otherwise return the string false. The range will be between 1 and 2^16.

def PrimeTime(num)
    return false if num == 1
     
    !(2...num).any?{|c| num % c == 0}
   
end
      
print PrimeTime(7)