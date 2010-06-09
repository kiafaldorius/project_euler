#!/usr/bin/env ruby

def euler_16(power = 1000, base = 2)
  (base**power).to_s.split('').reduce(0) { |n, i| n+=i.to_i }
end


#  2^(15) = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
#
#  What is the sum of the digits of the number 2^(1000)?

