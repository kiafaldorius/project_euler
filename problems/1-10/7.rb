#!/usr/bin/env ruby

def euler_7(num = 10001)
  require 'mathn'
  x = Prime.new
  y = 1
  num.times do  y = x.next end
  y
end

#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6^(th) prime is 13.
#
#What is the 10001^(st) prime number?

