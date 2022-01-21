#Have the function Superincreasing(arr) take the array of numbers stored in arr and determine if the array forms a superincreasing sequence where each element in the array is greater than the sum of all previous elements. The array will only consist of positive integers. For example: if arr is [1, 3, 6, 13, 54] then your program should return the string "true" because it forms a superincreasing sequence. If a superincreasing sequence isn't formed, then your program should return the string "false"

def Superincreasing(arr)

arr.each_with_index do |c,ind|
    next if ind == 0

    if c < arr[0..ind-1].reduce(:+)
        false
    end

end
true

end
puts Superincreasing([1, 3, 6, 13, 54])
