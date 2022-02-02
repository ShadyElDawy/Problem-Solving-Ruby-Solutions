#Have the function NumberEncoding(str) take the str parameter and encode the message according to the following rule: encode every letter into its corresponding numbered position in the alphabet. Symbols and spaces will also be used in the input. For example: if str is "af5c a#!" then your program should return 1653 1#!.


def NumberEncoding(str) 
    alph = ("a".."z").to_a
    res = []

    

    new = str.split("")
    new.each do |v|
        res  << (!alph.include?(v.downcase) ? v : alph.index(v)+1)
    end

res.join("")
end

puts NumberEncoding("af5c a#!")
