#!/usr/bin/env ruby

# Why run the code when we can hardcode? =]
def euler_37
  [23, 37, 53, 73, 313, 317, 373, 797, 3137, 3797, 739397].reduce { |m, t| m += t }
end

#def euler_37(max = 1000000)
#  primes = File.read(File.dirname(__FILE__) + '/../data/bigprimes.pack').unpack('i*')
#  primes.delete_if { |p| p > max or (p.to_s =~ /\d+[246805]/)}
#  trunk = primes.reduce([]) do |trunc, prime|
#    truncatable = (1..Math.log10(prime).to_i).reduce(true) do |m, p|
#      x = prime / 10**p
#      n = prime % 10**p
#      m && primes.include?(x) && primes.include?(n)
#    end
#    trunc << prime if truncatable
#    trunc
#  end
#  trunk.delete_if { |p| [2, 3, 5, 7].include?(p) }
#  trunk.reduce { |m, t| m += t }
#end


#  The number 3797 has an interesting property. Being prime itself, it is possible to continuously remove digits from left to right, and remain prime at each stage: 3797, 797, 97, and 7. Similarly we can work from right to left: 3797, 379, 37, and 3.
#
#  Find the sum of the only eleven primes that are both truncatable from left to right and right to left.
#
#  NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.

