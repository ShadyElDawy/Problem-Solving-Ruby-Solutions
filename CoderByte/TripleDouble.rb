#Have the function TripleDouble(num1,num2) take both parameters being passed, and return 1 if there is a straight triple of a number at any place in num1 and also a straight double of the same number in num2. For example: if num1 equals 451999277 and num2 equals 41177722899, then return 1 because in the first parameter you have the straight triple 999 and you have a straight double, 99, of the same number in the second parameter. If this isn't the case, return 0.

def TripleDouble(num1,num2)
#1. split each into array of integers
#2. get the trible and compate it to double repeated which has the same value

new1 = num1.to_s.split("").map(&:to_i)
rep1 = new1.find{|x| new1.count(x) == 3}

new2 = num2.to_s.split("").map(&:to_i)
rep2 = new2.find{|x| (new2.count(x) == 2 and x == rep1)}

rep1 == rep2

end
puts TripleDouble(451999277, 4117772289)