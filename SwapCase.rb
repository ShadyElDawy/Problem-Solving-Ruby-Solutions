#Have the function SwapCase(str) take the str parameter and swap the case of each character. For example: if str is "Hello World" the output should be hELLO wORLD. Let numbers and symbols stay the way they are.

def SwapCase(str)
arr = []
str.chars do |c|
    arr << (c == " " ? " " : c == c.upcase ? c.downcase! : c.upcase!)
end

arr.join

end

print SwapCase("Hello World")