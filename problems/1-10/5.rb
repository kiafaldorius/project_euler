#!/usr/bin/env ruby

def euler_5(max = 20)
  require 'mathn'
  max.downto(1).reduce do |n, x|
    n ||= 1
    n = (n*x) / n.gcd(x) if n%x != 0;
    n
  end
end

#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

