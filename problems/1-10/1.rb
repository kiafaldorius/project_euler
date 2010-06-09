#!/usr/bin/env ruby

def euler_1(max = 1000)
	(1...max).reduce do |n, x|
	  n += (x%3 == 0 || x%5 == 0) ? x : 0
	end
end

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# 
# Find the sum of all the multiples of 3 or 5 below 1000.

