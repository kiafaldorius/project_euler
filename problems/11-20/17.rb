#!/usr/bin/env ruby

# The obvious brute force solution is to generate the word and then count the characters
# but that takes up too much code. We only care about the length of the characters, so
# I will prefer a bunch of conditionals. But as a side effect, it's only designed for 1 to 1000
def euler_17(number = 1000)
  # magic numbers - can you guess from where this magic came?
  ones = [0, 3, 3, 5, 4, 4, 3, 5, 5, 4, 3, 6, 6, 8, 8, 7, 7, 9, 8, 8]
  tens = [0, 3, 6, 6, 5, 5, 5, 7, 6, 6]
  total = 0
  (1..number).each do |i|
    if i % 100 < 20
      total += ones[i % 100]
      total += 3 if i % 100 > 0 and i > 100
    else
      total += tens[(i % 100)/10]
      total += ones[i % 10]
      total += 3 if i > 100
    end
    i = (i - i % 100)/100
    #puts i
    if i >= 0 and i < 10
      total += ones[i] + 7 unless i == 0
    else
      total += 11
    end
  end
  total
end

#  If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
#
#  If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
#
#  NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

