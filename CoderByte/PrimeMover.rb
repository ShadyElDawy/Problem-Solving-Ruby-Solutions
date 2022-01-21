#Have the function PrimeMover(num) return the numth prime number. The range will be from 1 to 10^4. For example: if num is 16 the output should be 53 as 53 is the 16th prime number.

def PrimeMover(num)
  primes = []

  i = 1
  count = 0
  while count <= num do
    if !(2...i).any?{|c| (i % c) == 0}
        primes << i
        count += 1
    end
    i += 1
  end
  
  primes.last
end
      
print PrimeMover(16)