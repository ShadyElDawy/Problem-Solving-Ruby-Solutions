# Using the Ruby language, have the function SimpleSymbols(str) take the str parameter being passed and determine if it is an acceptable sequence by either returning the string true or false. The str parameter will be composed of + and = symbols with several letters between them (ie. ++d+===+c++==a) and for the string to be true each letter must be surrounded by a + symbol. So the string to the left would be false. The string will not be empty and will have at least one letter.

# Sample Test Cases
# Input:"+d+=3=+s+"
# Output:"true"


# Input:"f++d+"
# Output:"false"

def SimpleSymbols(str)
    #1.check if chat is letter
    #2.compare

    return false if str[0] != '+'

    str.each_char do |i|

        if ("A".."z").to_a.include?i
            if str[str.index(i)-1] != '+' or str[str.index(i)+1] != '+'
                false
            end  
        end
    end

    true

end

puts SimpleSymbols("+d+=3=+s+")