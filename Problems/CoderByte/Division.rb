#Have the function Division(num1,num2) take both parameters being passed and return the Greatest Common Factor. That is, return the greatest number that evenly goes into both numbers with no remainder. For example: 12 and 16 both are divisible by 1, 2, and 4 so the output should be 4. The range for both parameters will be from 1 to 10^3.

def Division(num1,num2) 
gcd = 1
arr = (1..num2+1).to_a

arr.each do |v|
    if num1 % v == 0 and num2 % v == 0 and v > gcd
        gcd = v
    end 
end

gcd
end 

puts Division(12,16) 