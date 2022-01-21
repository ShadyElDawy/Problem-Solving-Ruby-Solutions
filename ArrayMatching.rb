#Have the function ArrayMatching(strArr) read the array of strings stored in strArr which will contain only two elements, both of which will represent an array of positive integers. For example: if strArr is ["[1, 2, 5, 6]", "[5, 2, 8, 11]"], then both elements in the input represent two integer arrays, and your goal for this challenge is to add the elements in corresponding locations from both arrays. For the example input, your program should do the following additions: [(1 + 5), (2 + 2), (5 + 8), (6 + 11)] which then equals [6, 4, 13, 17]. Your program should finally return this resulting array in a string format with each element separated by a hyphen: 6-4-13-17.

#If the two arrays do not have the same amount of elements, then simply append the remaining elements onto the new array (example shown below). Both arrays will be in the format: [e1, e2, e3, ...] where at least one element will exist in each array.

def ArrayMatching(strArr)
arr1 = strArr[0]
new1 = arr1[1..-2].split(",").map(&:to_i)


arr2 = strArr[1]
new2 = arr2[1..-2].split(",").map(&:to_i)
res = []

#for difrrent array sizes, check if null, just add 0
(0..new1.length-1).each_with_index { |v,i| res << ((new1[i]||= 0 ) + (new2[i] ||= 0))}

res.join("-")

end

print ArrayMatching(["[1, 2, 5, 6, 8]", "[5, 2, 8, 11]"])