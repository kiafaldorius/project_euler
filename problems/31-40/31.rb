#!/usr/bin/env ruby


# It's a pretty well-known algorithm in examples of dynamic programming: The "Coin Change"
def euler_31(choices = [1,2,5,10,20,50,100,200], total = 200)
  result = [1]
  choices.each do |choice|
    (choice..total).each do |c|
      result[c] ||= 0
      result[c] += result[c - choice]
    end
  end
  result[total]
end

#  In England the currency is made up of pound, £, and pence, p, and there are eight coins in general circulation:
#
#      1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
#
#  It is possible to make £2 in the following way:
#
#      1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p
#
#  How many different ways can £2 be made using any number of coins?

