#!/usr/bin/env ruby

def euler_36(max = 1000000)
  sum = 0
  (1..max).each do |i|
    s = i.to_s
    b = i.to_s(2)
    sum += i if s == s.reverse and b == b.reverse
  end
  sum
end

#  The decimal number, 585 = 1001001001_(2) (binary), is palindromic in both bases.
#
#  Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.
#
#  (Please note that the palindromic number, in either base, may not include leading zeros.)

