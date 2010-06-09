#!/usr/bin/env ruby

# The example gave the smallest pair of amicable numbers. They're actually pretty rare
# and hard to find without computers
def euler_21(max = 10000)
  div = {}
  friends = []
  divisors = lambda do |x| # would this be better off as a separate method? who cares...
      return div[x] if div[x]
      div[x] = 2.upto(Math.sqrt(x).ceil).reduce([]) do |n, j|
        n << j << x/j if x % j == 0
        n
      end.compact.uniq.reduce(:+) || 0
      div[x]+=1
    end
  max.downto(220).each do |i|
    ami = divisors.call(i)
    friends << i if divisors.call(ami) == i and ami != i
  end
  friends.reduce(:+)
end


#  Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
#  If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.
#
#  For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
#
#  Evaluate the sum of all the amicable numbers under 10000.

