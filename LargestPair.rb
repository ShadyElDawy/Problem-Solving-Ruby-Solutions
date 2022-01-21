#Have the function LargestPair(num) take the num parameter being passed and determine the largest double digit number within the whole number. For example: if num is 4759472 then your program should return 94 because that is the largest double digit number. The input will always contain at least two positive digits.

def LargestPair(num)
   arr = num.to_s.chars
   res = []

   arr.each_with_index {|c,i| res << c.to_s + arr[i+1].to_s}

   res.map(&:to_i).max
    
end
    
print LargestPair(4759472)