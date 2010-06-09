#!/usr/bin/env ruby

def euler_20(num = 100)
  (1..num).reduce(:*).to_s.split('').reduce(0) do |n, i|
    n+=i.to_i
  end
end

#  n! means n × (n  − 1) × ... × 3 × 2 × 1
#
#  Find the sum of the digits in the number 100!

