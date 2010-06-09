#!/usr/bin/env ruby

# It's a pretty well known combinations problem. It'll take a lot to explain, so here:
# http://mathworld.wolfram.com/StaircaseWalk.html
def euler_15(square = 20)
  (1..(square*2)).reduce(:*)/((1..square).reduce(:*)**2)
end

#  Starting in the top left corner of a 2×2 grid, there are 6 routes (without backtracking) to the bottom right corner.
#
#  How many routes are there through a 20×20 grid?

