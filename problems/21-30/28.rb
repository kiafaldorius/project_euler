#!/usr/bin/env ruby

# Because of the generation algorithm, the height and width can not be an even number.
# Therefore, any even number passed to this will get treated as the next odd number
def euler_28(square = 1001)
  len = [1]
  while n = ((len.length-1)/4).to_i and (s = 2*(n+1)) <= square do
    len << len.last + s 
  end
  len.reduce(:+)
end

#  Starting with the number 1 and moving to the right in a clockwise direction a 5 by 5 spiral is formed as follows:
#
#  21 22 23 24 25
#  20  7  8  9 10
#  19  6  1  2 11
#  18  5  4  3 12
#  17 16 15 14 13
#
#  It can be verified that the sum of the numbers on the diagonals is 101.
#
#  What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?

