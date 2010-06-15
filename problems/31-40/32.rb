#!/usr/bin/env ruby

# Only designed to take 3 to 10 inclusive
def euler_32(pan = 9)
  result = {}
  total = []
  (1..999).each do |i|
    (1..9999).each do |j|
      next if result[j]==i || result[i]==j
      n = j * i
      x = (n.to_s + j.to_s + i.to_s)
      break if x.length > pan
      total << n if x.length == pan && x.split('').uniq.length == pan && (!x.include?('0') || pan==10)
      result[j] = i
    end
  end
  total.uniq.reduce(:+)
end

#  We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once; for example, the 5-digit number, 15234, is 1 through 5 pandigital.
#
#  The product 7254 is unusual, as the identity, 39 × 186 = 7254, containing multiplicand, multiplier, and product is 1 through 9 pandigital.
#
#  Find the sum of all products whose multiplicand/multiplier/product identity can be written as a 1 through 9 pandigital.
#  HINT: Some products can be obtained in more than one way so be sure to only include it once in your sum.

