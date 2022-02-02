# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

# You may assume that each input would have exactly one solution, and you may not use the same element twice.

# You can return the answer in any order.

# Input: nums = [2,7,11,15], target = 9
# Output: [0,1]
# Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].


def two_sum(nums, target)
    ##we get the diff between our target and each value
    ## that diff should be in out array, it's the other value that should be added up to get the target
    ##ex: [2,7,11,15] with target 9, starting with 2, 9 - 2 = 7, then we need only to look for 7 
    checked = {}
        
    nums.each_with_index do |v,i|
        diff = target - v
        return [checked[diff], i] if checked[diff]
        checked[v] = i
    end
    
end

print two_sum([3,2,4],6 )