#!/usr/bin/env ruby

# Sieve of Erastosthenes - good for up to 10 million
# The brute force prime generation using Ruby's Prime class takes too long.
def euler_10(max = 2000000)
  x = (2..max).to_a
  (2..Math.sqrt(max).to_i).each do |i|
    x.delete_if { |n| n!=i and n%i == 0 }
  end
  x.reduce(:+)
end

#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
#Find the sum of all the primes below two million.

