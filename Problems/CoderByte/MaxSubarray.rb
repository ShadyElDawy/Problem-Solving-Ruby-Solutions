#Have the function MaxSubarray(arr) take the array of numbers stored in arr and determine the largest sum that can be formed by any contiguous subarray in the array. For example, if arr is [-2, 5, -1, 7, -3] then your program should return 11 because the sum is formed by the subarray [5, -1, 7]. Adding any element before or after this subarray would make the sum smaller.

def MaxSubarray(arr)
    maxsum = 0

    arr.each_with_index do |v,x|
        max_end = 0

        arr.each_with_index do |num,i|
            next if i <= x
            max_end += num
            maxsum = max_end > maxsum ? max_end : maxsum
        end
    end
    maxsum
end
puts MaxSubarray([-2, 5, -1, 7, -3])