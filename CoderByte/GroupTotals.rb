# Have the function GroupTotals(strArr) read in the strArr parameter containing key:value pairs where the key is a string and the value is an integer. Your program should return a string with new key:value pairs separated by a comma such that each key appears only once with the total values summed up.

# For example: if strArr is ["B:-1", "A:1", "B:3", "A:5"] then your program should return the string A:6,B:2.

# Your final output string should return the keys in alphabetical order. Exclude keys that have a value of 0 after being summed up


def GroupTotals(arr)
    nums = arr.join("").scan(/\d+/).map(&:to_i)
    lets = arr.join("").delete(":").scan(/\D+/)

    res = []
    c = 0
    lets.each_with_index do |v,i|
        #to prevent dubplicates
        next if res.join("").include?v
    if v.split("")[1] == '-'
        nums[i] = nums[i] * -1
        v.delete!('-')
    end
    if lets.count(v) == 1
        res << v + ":" + (nums[i]).to_s
    elsif g = lets.each_index.select { |i| lets[i] == v }
        g.map{|f| c+= nums[f]}
        res << v + ":" + c.to_s
        c = 0
    end        
end

res.sort.join(",")
end 

puts GroupTotals(["B:-1", "A:1", "B:3", "A:5"])