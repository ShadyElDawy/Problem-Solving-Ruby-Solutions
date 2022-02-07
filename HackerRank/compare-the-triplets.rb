def compareTriplets(a, b)
    x = 0
    y = 0
   a.each_with_index do |c, i|
    if c > b[i]
      x += 1 
    elsif c < b[i]
      y += 1
    end
  end 

  return x, y
end