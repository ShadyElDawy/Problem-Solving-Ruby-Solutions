#Given a time in 12-hour AM/PM format, convert it to military (24-hour) time.


def timeConversion(s)

    return "00:00:00" if s == '00:00:00' or s == "12:00:00AM"
    aOrb = s[-2].upcase
# From 12:00 AM to 12:59 AM - Subtract 12 and remove AM
    if (aOrb == 'A' and s[0..1] == '12')
        s[0..1] = ((s[0..1]).to_i - 12).to_s + '0' 
# From 12:00 PM to 12:59 PM - Remove PM
    elsif aOrb == 'P' and s[0..1] == '12'
        aOrb = aOrb 
#From 1:00 PM to 11:59 PM - Add 12 and remove PM
    elsif ( aOrb == 'P')
        s[0..1] = ((s[0..1]).to_i + 12).to_s 
    end
    s[0..-3]
 end

 print timeConversion("12:01:00AM")