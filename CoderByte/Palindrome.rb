# Using the Ruby language, have the function Palindrome(str) take the str parameter being passed and return the string true if the parameter is a palindrome, (the string is the same forward as it is backward) otherwise return the string false. For example: "racecar" is also "racecar" backwards. Punctuation and numbers will not be part of the string.

# Sample Test Cases
# Input:"never odd or even"
# Output:"true"

# Input:"eye"
# Output:"true"

def palindrome?(str)
    str = str.delete(" ").downcase
    str == str.reverse
  end
   
puts palindrome?("never odd or even")  