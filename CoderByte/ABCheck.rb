# Have the function ABCheck(str) take the str parameter being passed and return the string true if the characters a and b are separated by exactly 3 places anywhere in the string at least once (ie. "lane borrowed" would result in true because there is exactly three characters between a and b). Otherwise return the string false.

# Sample Test Cases
# Input:"after badly"
# Output:"false"


# Input:"Laura sobs"
# Output:"true"

def ABCheck(str)

    matches = str.scan(/a...b/).any?

end

puts ABCheck("Laura sobs")