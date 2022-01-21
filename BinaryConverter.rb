#Have the function BinaryConverter(str) return the decimal form of the binary value. For example: if 101 is passed return 5, or if 1000 is passed return 8.

def BinaryConverter(str)
digits = str.to_s.chars.reverse
final = 0
digits.each_with_index do |v,i|
    final += v.to_i * 2**i
end
final
end 


puts BinaryConverter(1000)