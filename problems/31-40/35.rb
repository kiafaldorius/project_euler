#!/usr/bin/env ruby

# The algorithm and filtering is good...(might not be the best...but they're good)
# too bad it takes almost a minute to generate the primes.
def euler_35(max = 1000000)
  rotate = lambda do |str|
      rotations = [str.to_i]
      (1...str.length).each do |s|
        s=str << str[0]
        s[0]=''
        str = s
        rotations << s.to_i
      end
      rotations.uniq
    end
  circular = []
  primes = File.read(File.dirname(__FILE__) + '/../data/bigprimes.pack').unpack('i*')
  primes.delete_if { |p| p > max or (p.to_s =~ /[246805]/ and p != 2 and p != 5)  }
  while p = primes[0]
    primes.shift and next if circular.include?(p)
    choices = rotate.call(p.to_s)
    c = choices.reduce(true) do |m, x|
      break false unless m
      m && primes.delete(x)
    end
    circular |= choices if c
  end
  circular.length
end

#  The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.
#
#  There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.
#
#  How many circular primes are there below one million?


