#Have the function BitwiseOne(strArr) take the array of strings stored in strArr, which will only contain two strings of equal length that represent binary numbers, and return a final binary string that performed the bitwise OR operation on both strings. A bitwise OR operation places a 0 in the new string where there are zeroes in both binary strings, otherwise it places a 1 in that spot. For example: if strArr is ["1001", "0100"] then your program should return the string "1101"

def BitwiseOne(strArr)

    arr1 = strArr[0].chars
    arr2 = strArr[1].chars
    res = []

(0..arr1.length-1).each { |i|
    res << (arr1[i] != arr2[i] ? "1" : arr1[i])
}
res.join("")
end 

puts BitwiseOne(["1001", "0100"])