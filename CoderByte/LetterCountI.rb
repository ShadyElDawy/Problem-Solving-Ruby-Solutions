# Have the function LetterCountI(str) take the str parameter being passed and return the first word with the greatest number of repeated letters. For example: "Today, is the greatest day ever!" should return greatest because it has 2 e's (and 2 t's) and it comes before ever which also has 2 e's. If there are no words with repeating letters return -1. Words will be separated by spaces.

# Sample Test Cases
# Input:"Hello apple pie"
# Output:"Hello"

# Input:"No words"
# Output:-1

def LetterCountI(str)

    char_count = 0
    top_word = []
    arr = str.split


    arr.each do |word|
        word.chars do |c|
            x = word.count(c)
            char_count = x and top_word = word unless x <= char_count
        end
    end

    char_count > 1 ? top_word : -1
end

puts LetterCountI("Today, is the greatest day ever!")