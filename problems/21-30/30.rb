#!/usr/bin/env ruby

def euler_30(power = 5)
  max = 1
  max += 1 until (9**power*max).to_s.length < max
  max = 9**power*(max-1)
  (10).upto(max).reduce(0) do |m, k|
    m += k if k == k.to_s.split('').reduce(0) { |n, j| n += j.to_i**power }
    m
  end
end

#  Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:
#
#      1634 = 1^(4) + 6^(4) + 3^(4) + 4^(4)
#      8208 = 8^(4) + 2^(4) + 0^(4) + 8^(4)
#      9474 = 9^(4) + 4^(4) + 7^(4) + 4^(4)
#
#  As 1 = 1^(4) is not a sum it is not included.
#
#  The sum of these numbers is 1634 + 8208 + 9474 = 19316.
#
#  Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.

