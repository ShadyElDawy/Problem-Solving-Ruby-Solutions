#Have the function NonrepeatingCharacter(str) take the str parameter being passed, which will contain only alphabetic characters and spaces, and return the first non-repeating character. For example: if str is "agettkgaeee" then your program should return k. The string will always contain at least one character and there will always be at least one non-repeating character.

def NonrepeatingCharacter(str)
   str.chars.find{ |c| str.count(c) == 1}
end
     
print NonrepeatingCharacter("agettkgaeee")