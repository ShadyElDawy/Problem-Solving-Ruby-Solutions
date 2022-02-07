#Given an array of integers, calculate the ratios of its elements that are positive, negative, and zero. Print the decimal value of each fraction on a new line with 6 places after the decimal.



def plusMinus(arr)
  pos, neg, zero = 0,0,0
  size = arr.size
  arr.each do |v|
    v > 0 ? pos += 1 : (v < 0 ? neg += 1 : zero += 1)
  end
  puts pos.fdiv(size)
  puts neg.fdiv(size)
  puts zero.fdiv(size)
end