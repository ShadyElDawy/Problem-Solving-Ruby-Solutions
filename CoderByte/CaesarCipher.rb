#Have the function CaesarCipher(str,num) take the str parameter and perform a Caesar Cipher shift on it using the num parameter as the shifting number. A Caesar Cipher works by shifting each letter in the string N places down in the alphabet (in this case N will be num). Punctuation, spaces, and capitalization should remain intact. For example if the string is "Caesar Cipher" and num is 2 the output should be "Ecguct Ekrjgt".

def CaesarCipher(str, num)
alphabet = ("a"..'z').to_a
res = ""

str.chars do |x|
    res << x and next if !alphabet.include?(x.downcase)
    count = alphabet.index(x.downcase).to_i + num
    if count > 26
        count -= 26
    end
    encrypted = alphabet[count]
    res << (x == x.upcase ? encrypted.upcase : encrypted)

end
res

end

puts CaesarCipher("Caesar Cipher", 2)