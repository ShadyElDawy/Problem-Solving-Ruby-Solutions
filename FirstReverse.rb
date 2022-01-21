# Have the function LetterChanges(str) take the str parameter being passed and modify it using the following algorithm. Replace every letter in the string with the letter following it in the alphabet (ie. c becomes d, z becomes a). Then capitalize every vowel in this new string (a, e, i, o, u) and finally return this modified string.

def  LetterChanges(str)

    #1. convert letters using gsub
    #2. capitlize every vowel

converted = str.gsub(/[a-zA-Z]/) do |i|
    if i == 'z' or i == 'Z'
        'a'
    else
        (i.ord + 1).chr
    end
end

converted.tr('aeiou', 'AEIOU')

end

puts LetterChanges("hello")
