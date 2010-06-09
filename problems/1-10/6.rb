#!/usr/bin/env ruby

def euler_6(max = 100)
  sum = (1..max).reduce { |n, x| n += x**2 }
  square = (1..max).reduce(:+) ** 2
  square - sum
end

#The sum of the squares of the first ten natural numbers is,
#1^(2) + 2^(2) + ... + 10^(2) = 385
#
#The square of the sum of the first ten natural numbers is,
#(1 + 2 + ... + 10)^(2) = 55^(2) = 3025
#
#Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#
#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

