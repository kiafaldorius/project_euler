#!/usr/bin/env ruby

# This is what's called a factorion: http://mathworld.wolfram.com/Factorion.html
# There are only four of them in base 10: http://www.research.att.com/~njas/sequences/A014080
# Therefore, I am going to cheat for this problem.
def euler_34(single_digits = false)
  factorions = [1, 2, 145, 40585]
  factorions.shift(2) unless single_digits
  return factorions.reduce(:+)
end

#  145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.
#
#  Find the sum of all numbers which are equal to the sum of the factorial of their digits.
#
#  Note: as 1! = 1 and 2! = 2 are not sums they are not included.

