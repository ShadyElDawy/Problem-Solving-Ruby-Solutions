#Have the function HammingDistance(strArr) take the array of strings stored in strArr, which will only contain two strings of equal length and return the Hamming distance between them. The Hamming distance is the number of positions where the corresponding characters are different. For example: if strArr is ["coder", "codec"] then your program should return 1. The string will always be of equal length and will only contain lowercase characters from the alphabet and numbers.

def HammingDistance(strArr)

    arr1 = strArr[0].chars
    arr2 = strArr[1].chars
    f = 0

(0..arr1.length-1).each do |i|
    f+=1 if arr1[i] != arr2[i] 
end
f

end 

puts HammingDistance(["coder", "codec"])