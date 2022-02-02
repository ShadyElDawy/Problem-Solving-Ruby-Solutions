#medium level
def length_of_longest_substring(s)
    return 0 if s.length == 0
        ###if it contains only one letter
    return 1 if s.count(s[0]) == s.length
    x = []
    d = ""
    s.chars.each do |v|
        if d.include?v
            x << d.length
            ##get all chars after the 1st repeated chat till the current
            d = d[(d.index(v))+1..d.length]
            d << v
        else
            d << v
        end
    end
     x << d.length
     x.max
end
puts length_of_longest_substring("dvdf")

## another solution using counter instead of array
def length_of_longest_substring(s)
    return 0 if s.length == 0
    return 1 if s.count(s[0]) == s.length
    x = 0
    d = ""
    s.chars.each do |v|
        if d.include?v
            x = d.length > x ? d.length : x
            d = d[(d.index(v))+1..d.length]
            d << v
        else
            d << v
        end
    end
     x = d.length > x ? d.length : x
     x
end

puts length_of_longest_substring("dvdf")