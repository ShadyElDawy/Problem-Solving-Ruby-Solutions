# Challenge
# Have the function LongestWord(sen) take the sen parameter being passed and return the largest word in the string. If there are two or more words that are the same length, return the first word from the string with that length. Ignore punctuation and assume sen will not be empty.

# Sample Test Cases
# Input:"fun&!! time"
# Output:"time"


# Input:"I love dogs"
# Output:"love"

def LongestWord(sen)
    sen.split(" ").max_by{ |x| x.length}

end

puts LongestWord("Hi there I am shady")