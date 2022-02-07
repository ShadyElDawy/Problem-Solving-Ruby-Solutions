#Write a program that prints a staircase of size .

def staircase(n)
     (1..n).each{|c| puts (' '* (n - c)) + '#'*c }
end

print staircase(5)