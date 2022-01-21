# Have the function SecondGreatLow(arr) take the array of numbers stored in arr and return the second lowest and second greatest numbers, respectively, separated by a space. For example: if arr contains [7, 7, 12, 98, 106] the output should be 12 98. The array will not be empty and will contain at least 2 numbers. It can get tricky if there's just two numbers!

def SecondGreatLow(arr)

a = arr.sort.uniq

    case arr.size
        when 2
            return arr[1].to_s + " " + a[0].to_s
        else
            return a[1].to_s + " " + a[-2].to_s
    end
end


puts SecondGreatLow([7, 7, 12, 98, 106] )