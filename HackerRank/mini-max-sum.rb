#Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers. Then print the respective minimum and maximum values as a single line of two space-separated long integers.


def miniMaxSum(arr)
     min = arr.sum
     max = 0
     (0...arr.length).each do |i|
          sum = (arr.combination(4).to_a)[i].sum
          if sum > max
               max = sum
          end
          if sum < min
               min = sum
          end
     end
 puts "#{min} #{max}"
 end

print miniMaxSum([1, 2, 3, 4, 5])