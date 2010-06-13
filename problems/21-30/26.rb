#!/usr/bin/env ruby

# http://en.wikipedia.org/wiki/Repeating_decimal
# A fraction in lowest terms with a prime  denominator other than 2 or 5 (i.e. coprime to 10)
# always produces a repeating decimal. The period of the repeating decimal of 1⁄p  is equal to
# the order of 10 modulo p. If 10 is a primitive root modulo p, the period is equal to p − 1;
# if not, the period is a factor of p − 1.
# This result can be deduced from Fermat's little theorem, which states that 10p−1 = 1 (mod p).
def euler_26(d = 1000)
  require 'mathn'
  order = lambda do |p|
    return 1 if p == 2 || p == 5
    i = 1
    i+=1 until (10**i) % p == 1
    i
    end
  primes = Prime.new # it suffices to only check primes
  maxrec = 0
  maxd = 0
  while (n = primes.next) < 1000 do
    o = order.call(n)
    if o > maxrec
      maxrec = o
      maxd = n
    end
  end
  maxd
end


#  A unit fraction contains 1 in the numerator. The decimal representation of the unit fractions with denominators 2 to 10 are given:
#
#      ^(1)/_(2)	= 	0.5
#      ^(1)/_(3)	= 	0.(3)
#      ^(1)/_(4)	= 	0.25
#      ^(1)/_(5)	= 	0.2
#      ^(1)/_(6)	= 	0.1(6)
#      ^(1)/_(7)	= 	0.(142857)
#      ^(1)/_(8)	= 	0.125
#      ^(1)/_(9)	= 	0.(1)
#      ^(1)/_(10)	= 	0.1
#
#  Where 0.1(6) means 0.166666..., and has a 1-digit recurring cycle. It can be seen that ^(1)/_(7) has a 6-digit recurring cycle.
#
#  Find the value of d < 1000 for which ^(1)/_(d) contains the longest recurring cycle in its decimal fraction part.

