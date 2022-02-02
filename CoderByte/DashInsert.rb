# Have the function DashInsert(str) insert dashes ('-') between each two odd numbers in str. For example: if str is 454793 the output should be 4547-9-3. Don't count zero as an odd number.

def DashInsert(str)
arr = []

#neglect last 
(0..str.length-2).each do |i|
        arr << ((str[i].to_i.odd? and str[i+1].to_i.odd?) ? str[i] + "-" : str[i])
end
#last element the was neglected
arr << str[str.length-1]
arr.join("")

end 

puts DashInsert("454793")