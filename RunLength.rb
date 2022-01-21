#Have the function RunLength(str) take the str parameter being passed and return a compressed version of the string using the Run-length encoding algorithm. This algorithm works by taking the occurrence of each repeating character and outputting that number along with a single character of the repeating sequence. For example: "wwwggopp" would return 3w2g1o2p. The string will not contain any numbers, punctuation, or symbols.

def RunLength(str)
    counter = 0
    
    res = ""
    str = str.chars
    str.each_with_index do |char, i|
        counter+= 1 
        (res << counter.to_s << char) and counter = 0 if char != str[i+1]
    end

    res
end
      
print RunLength("wwwggopp")