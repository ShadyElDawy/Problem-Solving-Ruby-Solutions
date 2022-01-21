# Using the Ruby language, have the function TimeConvert(num) take the num parameter being passed and return the number of hours and minutes the parameter converts to (ie. if num = 63 then the output should be 1:3). Separate the number of hours and minutes with a colon.

# Sample Test Cases
# Input:126
# Output:"2:6"


# Input:45
# Output:"0:45"


def TimeConvert(num)

    res = num/60.to_i
    f = "#{res}:#{num - res * 60}"

end

puts TimeConvert(45)