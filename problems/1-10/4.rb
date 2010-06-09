#!/usr/bin/env ruby

def euler_4(digits = 3)
  max = 10**digits - 1
  min = 10**(digits - 1)
  max.downto(min).each do |x|
    max.downto(min).each do |n|
      y=x*n;
      z = y if y.to_s == y.to_s.reverse and z < y
    end
  end
  z
end

#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
#Find the largest palindrome made from the product of two 3-digit numbers.

