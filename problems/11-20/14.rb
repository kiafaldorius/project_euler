#!/usr/bin/env ruby

# Default bruteforce method takes a little over 2 minutes...so I opted to use a cache
def euler_14(under = 1000000)
  len = 0
  num = 1
  cache = {}
  1.upto(under).each do |i|
    o = i
    count = 0
    until i==1 do
      count+=1
      if i % 2 == 0
        i/=2
      else
        i=3*i+1
      end
      if cache[i]
        count += cache[i]
        i = 1
      end
    end
    cache[o] = count
    #puts cache.inspect
    if count > len
      len = count
      num = o
    end
  end
  num
end

#  The following iterative sequence is defined for the set of positive integers:
#
#  n -> n/2 (n is even)
#  n -> 3n + 1 (n is odd)
#
#  Using the rule above and starting with 13, we generate the following sequence:
#  13 -> 40 -> 20 -> 10 -> 5 -> 16 -> 8 -> 4 -> 2 -> 1
#
#  It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
#
#  Which starting number, under one million, produces the longest chain?
# 
#  NOTE: Once the chain starts the terms are allowed to go above one million.


