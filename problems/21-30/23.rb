#!/usr/bin/env ruby

# No parameters, this problem is pretty specific
# 20161 is the number to which the description eludes
# See http://www.research.att.com/~njas/sequences/A048242
def euler_23
  max = 20161
  bounty = []
  abundants = []
  divisors = lambda do |x| # similar to the one in problem 21, but without the dictionary/cache
    div = 2.upto(Math.sqrt(x).ceil).reduce([]) do |n, j|
      n << j << x/j if x % j == 0
      n
    end.compact.uniq.reduce(:+) || 0
    div+1
  end
  (12..max).each { |i| abundants << i if divisors.call(i) > i }
  while abundants.length > 0 do
    a = abundants.shift
    bounty << (a*2)
    break if a*2 > max
    abundants.each do |b|
      break if a+b > max;
      bounty << (a+b);
    end
  end
  ((1..max).to_a - bounty).reduce(:+)
end

#  A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.
#
#  A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.
#
#  As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.
#
#  Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

