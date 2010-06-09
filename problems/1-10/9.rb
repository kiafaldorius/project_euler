#!/usr/bin/env ruby

def euler_9(num = 1000)
  x = 1
  1.upto(num).each do |a|
    1.upto(num).each do |b|
      c = 1000 - a - b
      x = a * b * c and break if c > 0 and a**2 + b**2 == c**2
    end
    break if x > 1
  end
  x
end


#A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#a^(2) + b^(2) = c^(2)
#
#For example, 3^(2) + 4^(2) = 9 + 16 = 25 = 5^(2).
#
#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.

